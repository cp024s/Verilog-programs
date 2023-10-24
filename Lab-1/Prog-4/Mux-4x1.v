module Mux4to1(
  input wire [3:0] a,
  input wire [3:0] b,
  input wire [3:0] c,
  input wire [3:0] d,
  input wire [1:0] sel,
  output wire [3:0] y
);
  wire [1:0] sel2;
  wire [3:0] y1, y2;
  
  // First-level 2:1 muxes
  Mux2to1 Mux0 (.a(a[0]), .b(b[0]), .sel(sel[0]), .y(y1[0]));
  Mux2to1 Mux1 (.a(a[1]), .b(b[1]), .sel(sel[0]), .y(y1[1]));
  Mux2to1 Mux2 (.a(c[0]), .b(d[0]), .sel(sel[0]), .y(y2[0]));
  Mux2to1 Mux3 (.a(c[1]), .b(d[1]), .sel(sel[0]), .y(y2[1]));

  // Second-level 2:1 muxes
  Mux2to1 Mux4 (.a(y1[0]), .b(y1[1]), .sel(sel[1]), .y(y[0]));
  Mux2to1 Mux5 (.a(y2[0]), .b(y2[1]), .sel(sel[1]), .y(y[1]));

endmodule

// WARNING
// This is an instanciated module. refer to Mux 2x1 for further understanding.
