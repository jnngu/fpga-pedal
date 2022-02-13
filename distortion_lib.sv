`default_nettype none

/*
  Distortion Hard Clip module
    When enabled, amplify by 2^gain_factor and HARD CLIP to a limit value
    This is a purely combinational component
 */
module Distortion_Hard_Clip
#(parameter LIMIT=12'h800)
(
  input  logic        clk, reset_n, valid_in,
  input  logic [11:0] A, gain_factor,
  input  logic        update, toggle_en,
  output logic valid_out,
  output logic [11:0] S
);

  logic enabled;
  always_ff @(posedge clk, negedge reset_n) begin
    if (~reset_n)
      enabled <= 1'd0;
    else if (toggle_en)
      enabled <= ~enabled;
	 valid_out <= valid_in;
	end


  logic [23:0] gained;
  logic [11:0] clipped;
  assign gained = {12'b0,A} << gain_factor;
  always_comb begin
	if (|gained[23:12]) begin
		clipped = 12'hfff;
	end
	else
		clipped = (gained[11:0] > LIMIT) ? 12'hfff : gained[11:0];
  end


  assign S = (enabled) ? clipped : A;

endmodule: Distortion_Hard_Clip

/*
  Distortion Soft Clip module
    When enabled, amplify by 2^gain_factor and apply different levels
    of right shift dependent on the higher bits. We can have three
    levels of clipping
    This is a purely combinational component
 */
module Distortion_Soft_Clip
#(parameter LIMIT_1=12'h800, LIMIT_2=12'h880, LIMIT_3=12'h888)
(
  input  logic        clk, reset_n,
  input  logic [11:0] A, gain_factor, toggle_en,
  input  logic        update,
  output logic [11:0] S
);

  logic enabled;
  always_ff @(posedge clk, negedge reset_n)
    if (~reset_n)
      enabled <= 1'd0;
    else if (toggle_en)
      enabled <= ~enabled;

  logic [11:0] gained;

  // This might be kinda poo
  always_comb begin
    gained = A << gain_factor;
    if (gained > LIMIT_1)
      gained = {1'd1, gained[10:0] >> 1};
    if (gained > LIMIT_2)
      gained = {4'h80, 1'd1, gained[6:0] >> 2};
    if (gained > LIMIT_3)
      // >> 3 is technically a hard clip; We can tune this later
      gained = {8'h88, 1'd1, gained[2:0] >> 3};
  end

  assign S = (enabled) ? gained : A;

endmodule: Distortion_Soft_Clip


module reverb
    (input logic clk, reset_n,
     input logic toggle_en, update,
     input logic [2:0] sh_amt,
     input logic [11:0] in, 
     output logic [11:0] out,
	  output logic valid_out
    );

	 logic [512:0][11:0] history;
	 genvar i;
	 generate
		for (i = 0; i < 128; i++) begin: history_shit
			if (i == 0)
				always_ff @(posedge clk)
					history[0] <= out;
			else
				always_ff @(posedge clk)
					history[i] <= history[i-1]; //  - 12'd12;
			
		end
	 endgenerate
	 
	 
	 always_ff @(posedge clk) begin
        if (update && toggle_en)
            out <= in + history[512]; // + history[256] + history[32];
        else
            out <= in;
		  valid_out <= update;
    end
endmodule: reverb