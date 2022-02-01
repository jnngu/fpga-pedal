`default_nettype none
`default_nettype none

/*
  Convolution module
    We can basically write any filtering algo in this module
    Performs a convolution of A with Kernel
 */
module Convolve
#(parameter DEPTH=8)
(
  input  logic                   clk, reset_n,
  input  logic [11:0]            A,
  input  logic [DEPTH-1:0][11:0] kernel,
  input  logic                   update, toggle_en,
  output logic [11:0]            S
);


  logic enabled;
  always_ff @(posedge clk, negedge reset_n)
    if (~reset_n)
      enabled <= 1'd0;
    else if (toggle_en)
      enabled <= ~enabled;

  logic [DEPTH-1:0][11:0] history, multiplies;

  genvar i;
  generate;
    for (i = 0; i < DEPTH; i++) begin
      // Create Registers
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
      S <= (enabled) ? (conv_result) : A;
      /* This is technically a cycle late, but it shouldn't really
         make a big difference. I ***think*** this will be much better
         for the critical path, however.
       */
  end

endmodule: Convolve