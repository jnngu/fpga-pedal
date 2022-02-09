/*
 *  SPI interface to work with the DE0_Nano ADC
 *  ADD[3:0] = determines which of the 8 channels to read values from
 *  din, sclk, dout, cs_b: feed to ADC
 *  dout: first four cycles of sclk are 0's, then other 12 cycles are the digital bits of signal, DB11 first then D0
 */
module SPI_interface (
    input logic         clk, reset_b, dout,
    input logic   [2:0] ADD,
    output logic        din, sclk, cs_b, valid,
    output logic [11:0] data
);

    logic [3:0] counter;

    always_ff @(negedge clk, negedge reset_b) begin
        if (~reset_b) begin
          counter <= 4'd0;
          cs_b <= 1'b1;
        end else begin
          counter <= counter + 4'd1;
          cs_b <= 1'b0;
      end
    end

    //assign cs_b = (counter > 5'd15) ? 1'd1 : 1'd0;



    assign sclk = cs_b ? 1'b1 : clk;

    //might be off by one
    always_comb begin
        case (counter)
            4'd2: din = ADD[2];
            4'd3: din = ADD[1];
            4'd4: din = ADD[0];
            default: din = 1'd0;
        endcase
    end

    always_ff @(posedge clk, negedge reset_b) begin
        if (~reset_b)
            data <= 12'b0;
        else begin
            if (counter == 4'd0)
                data <= 12'd0;
            else if (counter >= 4'd4)
                data[4'd11 - (counter - 4'd4)] <= dout;
        end

    end

endmodule: SPI_interface


module IPS_interface (
    input logic [11:0] data,
    input logic clk, reset_b, valid,
    output logic cs_b, sdi, sclk
);

    logic [3:0] counter;
    logic [15:0] shift_reg;

    enum logic [1:0] {INIT, TRANSMIT, FINAL} cs, ns;


    always_ff @(posedge clk, negedge reset_b) begin
      if (~reset_b)
        cs <= INIT;
      else
        cs <= ns;

    end

    always_comb begin
      case (cs)
        INIT: begin
        if (!valid) begin
          ns = INIT;
        end
        else begin
          ns = TRANSMIT;
        end
        end
        TRANSMIT: begin
        if (counter == 4'd15) begin
          ns = FINAL;
        end
        else begin
          ns = TRANSMIT;
        end
        end
        FINAL: ns = INIT;
      endcase
    end

	 //assign sclk = clk;

    always_comb begin
      cs_b = 1'b0;
      sclk = 1'b1;
      sdi = 1'b0;
      case (cs)
        INIT: begin
          cs_b = 1'b1;
          sclk = 1'b0;
          sdi = 1'b0;
        end
        TRANSMIT: begin
          if (counter >= 'd1)
            cs_b = 1'b0;
          else
            cs_b = 1'b1;
          sclk = clk;
          sdi = shift_reg[15];
        end
        FINAL: begin
          sclk = clk;
          sdi = shift_reg[15];
          cs_b = ~sclk;
        end

      endcase
    end
    /*
    always_ff @(negedge clk, negedge reset_b) begin
        if (~reset_b) begin
          counter <= 4'd0;
          //cs_b <= 1'b1;
        end else begin
          counter <= counter + 4'd1;
          //cs_b <= 1'b0;
      end
    end
    */
    //assign cs_b = (counter > 5'd15) ? 1'd1 : 1'd0;

    always_ff @(posedge clk, negedge reset_b) begin
      if (~reset_b) begin
        shift_reg <= 16'd0;
        counter <= 'b0;
      end else begin
        case (cs)
          INIT: begin
            counter <= 'b0;
            if(valid)
              shift_reg <= {4'b0011, data};
          end
          TRANSMIT: begin
            shift_reg <= shift_reg << 1;
            counter <= counter + 1'b1;
          end
        endcase
      end
    end


    //assign sclk = cs_b ? 1'b1 : clk;



endmodule: IPS_interface



module tb();

    logic [11:0] data;
    logic clk, reset_b, cs_b, sdi, sclk, valid;
    IPS_interface inter(.data, .clk, .reset_b, .cs_b, .sdi, .sclk, .valid);

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        reset_b = 0;
        reset_b <= 1;
    end

    initial begin
        data = 12'b111111111110;
        valid = 1'b1;
        repeat(20)
            @(posedge clk);
        $finish;
    end
endmodule:tb

