`default_nettype none

module Convolve
#(parameter DEPTH=8)
(
  input  logic        clk, reset_n,
  input  logic [11:0] A, B,
  input  logic        update,
  output logic [11:0] S
);

  logic [DEPTH-1:0][11:0] history;
  logic            [11:0] val_to_be_removed, new_entry;

  assign val_to_be_removed = history[DEPTH-1];
  assign         new_entry = A * B; // TODO: Write better multiply

  // Create history shift registers
  genvar i;
  generate;
    for (i = 0; i < DEPTH; i++) begin
      if (i == 0) begin
        always_ff @(posedge clk, negedge reset_n) begin
          if (~reset_n)
            history[i] <= 12'd0;
          else if (update)
            history[i] <= new_entry;
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

  /*
    Compute convolution
      We compute the convolution incrementally Whenever we update
      the registers, we add A*B to the history and we subtract the
      oldest value that we are deprecating. This saves many registers
      and multiplies as compared to the "dumb" method of keeping
      an N history for both A and B and recomputing
   */
  always_ff @(posedge clk, negedge reset_n) begin
    if (~reset_n)
      S <= 12'd0;
    else if (update)
      S <= S + A_history[0] - val_to_be_removed;
      /* This is technically a cycle late, but it shouldn't really
         make a big difference. I ***think*** this will be much better
         for the critical path, however.
       */
  end

endmodule: Convolve