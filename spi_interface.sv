/* 
 *  SPI interface to work with the DE0_Nano ADC
 *  ADD[3:0] = determines which of the 8 channels to read values from
 *  din, sclk, dout, cs_b: feed to ADC
 *  dout: first four cycles of sclk are 0's, then other 12 cycles are the digital bits of signal, DB11 first then D0
 */
module SPI_interface (
    input logic clk, reset_b, dout,
    input logic[3:0] ADD,
    output logic din, sclk, cs_b,
    output logic[11:0] data
);

    logic [3:0] counter;

    always_ff @(posedge clk, negedge reset_b) begin
        if (~reset_b)
            counter <= 4'd0;
        else
            counter <= counter + 4'd1;
    end

    assign sclk = cs_b? 1: clk;

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
            data <= 11'b0;
        else begin
            if (counter >= 4'd4)
                data[counter-4'd4] <= dout;
        end

    end

endmodule: SPI_interface