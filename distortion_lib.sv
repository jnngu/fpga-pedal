`default_nettype none

/*
  Distortion Hard Clip module
    When enabled, amplify by 2^gain_factor and HARD CLIP to a limit value
    This is a purely combinational component
 */
module Distortion_Hard_Clip
#(parameter LIMIT=12'h800000)
(
  input  logic        clk, reset_n,
  input  logic [11:0] A, gain_factor,
  input  logic        update,
  output logic [11:0] S
);

  logic enabled;
  always_ff @(posedge clk, negedge reset_n)
    if (~reset_n)
      enabled <= 1'd0;
    else if (toggle_en)
      enabled <= ~enabled;

  logic [11:0] gained, clipped;
  assign gained = A << gain_factor;
  assign clipped = (gained > LIMIT) ? LIMIT : gained;

  assign S = (enabled) ? clipped : A;

endmodule: Distortion_Hard_Clip