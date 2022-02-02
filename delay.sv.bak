`default_nettype none

/*
  Delay module
    This module basically just holds onto a samble hisotry and adds it to
    the output some N samples later
 */
module Delay
#(parameter DEPTH=8)
(
  input  logic        clk, reset_n,
  input  logic [11:0] A,
  input  logic        update, toggle_en,
  output logic [11:0] S
);

  logic enabled;
  always_ff @(posedge clk, negedge reset_n)
    if (~reset_n)
      enabled <= 1'd0;
    else if (toggle_en)
      enabled <= ~enabled;

  logic [DEPTH-1:0][11:0] history;
  logic            [11:0] delayed;

  assign delayed = history[DEPTH-1];

    // Create history shift registers
  genvar i;
  generate;
    for (i = 0; i < DEPTH; i++) begin
      if (i == 0) begin
        always_ff @(posedge clk, negedge reset_n) begin
          if (~reset_n)
            history[i] <= 12'd0;
          else if (update)
            history[i] <= (A >> 1);
        end
      end else begin
        always_ff @(posedge clk, negedge reset_n) begin
          if (~reset_n)
            A_history[i] <= 12'd0;
          else if (update)
            history[i] <= history[i-1];
        end
    end
  endgenerate

  // Combine line in + delayed
  assign S = (enabled) ? A + delayed : A;

endmodule: Delay