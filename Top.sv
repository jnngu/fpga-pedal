`default_nettype none

/*
  Top Module for guitar pedal
    Instantiates all of the internal modules and connects them together
 */

module Top
(
  input  logic        clk, reset_n,
  input  logic        dout,
  output logic        cs, din, sclk,ips_out, dac_sclk, dac_cs_b,
  output logic  [7:0] LED

  // TODO: figure out interface signals
);

logic new_clock, dac_clock;
pll_adc pll1 (.inclk0(clk), .c0(new_clock));
pll_dac pll2 (.inclk0(clk), .c0(dac_clock));

logic [11:0] adc_data, adc_data_reg;
SPI_interface adc_spi
  (.clk(new_clock),
   .reset_b(reset_n), .dout(dout),
   .ADD(3'd0),
   .din(din), .sclk(sclk), .cs_b(cs),
   .data(adc_data));

IPS_interface adc_ips
  (.clk(new_clock),
  .data(~12'b0),
  .reset_b(reset_n),
  .valid(1'b1),
  .cs_b(dac_cs_b),
  .sdi(ips_out),
  .sclk(dac_sclk)
  );
  
  logic [11:0] count, count2;
  logic        incr_count_one;
  
  assign incr_count_one = count2[5:0] == 6'd0;
  
  always_ff @(posedge new_clock, negedge reset_n) begin
	if (~reset_n)
		count2 <= 12'd0;
	else
		count2 <= count2 + 12'd1;
  end
  
   always_ff @(posedge new_clock, negedge reset_n) begin
	if (~reset_n)
		count <= 12'd0;
	else
	// else if (incr_count_one)
		count <= count + 12'd1;
  end
  
	
  logic [31:0] adc_sampler;
  always_ff @(posedge clk, negedge reset_n) begin
        if (~reset_n)
        adc_sampler <= 32'd0;
      else if (adc_sampler > 32'd10000002)
        adc_sampler <= 32'd0;
      else
        adc_sampler <= adc_sampler + 32'd1;
  end

  always_ff @(posedge clk, negedge reset_n) begin
        if (~reset_n)
            adc_data_reg <= 11'b0;
      else if (adc_sampler == 32'd10000000)
        adc_data_reg <= adc_data;
  end

  assign LED = adc_data[11:4];
  // genvar i;
  // generate
  //   for (i = 0; i < 8; i++) begin: JASSSSOOOOONNNNN
  //       if (i == 7)
  //         assign LED[7] = new_clock;
  //       else
  //         assign LED[i] = adc_data_reg > (12'b10 << i);
  //   end
  // endgenerate

endmodule: Top