`default_nettype none

module Template
#(parameter DEPTH=8)
(
  input  logic        clk, reset_n,
  input  logic [11:0] A,
  input  logic        update,
  output logic [11:0] S
);

  logic [DEPTH-1:0][11:0] history;

  // Create history shift registers
  genvar i;
  generate;
    for (i = 0; i < DEPTH; i++) begin
      if (i == 0) begin
        always_ff @(posedge clk, negedge reset_n) begin
          if (~reset_n)
            history[i] <= 12'd0;
          else if (update)
            history[i] <= [INSERT NEW VALUE];
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

endmodule: Template