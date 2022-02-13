`default_nettype none

/*
  Top Module for guitar pedal
    Instantiates all of the internal modules and connects them together
 */

module Top
(
  input  logic        clk, reset_n,
  input  logic        dout, hc_toggle,
  output logic        cs, din, sclk,ips_out, dac_sclk, dac_cs_b,
  output logic  [7:0] LED

  // TODO: figure out interface signals
);

logic new_clock, dac_clock;
pll_adc pll1 (.inclk0(clk), .c0(new_clock));
pll_dac pll2 (.inclk0(clk), .c0(dac_clock));
logic valid;
logic [11:0] adc_data, adc_data_reg, adc_data_reg_db, adc_data_reg_db2;


  
logic [11:0] hard_clip_out, reverb_out;
logic valid_out, valid_out2;


SPI_interface adc_spi
  (.clk(new_clock),
   .reset_b(reset_n), .dout(dout),
   .ADD(3'd0),
   .din(din), .sclk(sclk), .cs_b(cs), .valid(valid),
   .data(adc_data));
	
IPS_interface adc_ips
  (.clk(new_clock),
//    .data(adc_data),
  .data(reverb_out),
  .reset_b(reset_n),
  .valid(valid_out2),
  .cs_b(dac_cs_b),
  .sdi(ips_out),
  .sclk(dac_sclk)
  );
  
  
Distortion_Hard_Clip dist1 (.clk(new_clock), .reset_n(reset_n), .valid_in(valid),  .A(adc_data_reg_db2), .gain_factor(12'd3), .toggle_en(1'b0), .S(hard_clip_out), .valid_out(valid_out));

logic [2:0] sh_amt;
logic [11:0] in;
logic [11:0] out;

reverb rb
    (.clk(dac_clock), .reset_n(reset_n),
     .toggle_en(1'b0),//hc_toggle_db2), 
	  .update(valid_out),
     .sh_amt(3'd1),
     .in(hard_clip_out), 
     .out(reverb_out),
	  .valid_out(valid_out2)
    );
  
  
  logic [11:0] count, count2;
  logic        incr_count_one;
  
  logic [11:0] adc_data_denoised;
  assign adc_data_denoised = (adc_data <= 12'd1200) ? 12'd0 : adc_data;
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
      else if (adc_sampler > 32'd1136)
        adc_sampler <= 32'd0;
      else
        adc_sampler <= adc_sampler + 32'd1;
  end

  logic hc_toggle_db, hc_toggle_db2;
  always_ff @(posedge dac_clock, negedge reset_n) begin
        if (~reset_n) begin
            adc_data_reg <= 11'b0;
				adc_data_reg_db <= 11'b0;
				adc_data_reg_db2 <= 11'b0;
		  end
		  else begin
		  
			adc_data_reg_db <= adc_data;
			adc_data_reg_db2 <= adc_data_reg_db;
			hc_toggle_db <= hc_toggle;
			hc_toggle_db2 <= hc_toggle_db;
			
			end
  end
  

  assign LED[6:1] = adc_data_reg[11:5];
  assign LED[0] = ~hc_toggle_db2;
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