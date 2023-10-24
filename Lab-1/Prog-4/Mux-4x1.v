module Mux_4x1(
  input sel0, sel1,
  input  i0,i1,i2,i3,
  output wire y);
  
  wire y0, y1;
  
  Mux_2x1 m1(sel1, i2, i3, y1);
  Mux_2x1 m2(sel1, i0, i1, y0);
  Mux_2x1 m3(sel0, y0, y1, y);
endmodule

// WARNING
// This is an instanciated module. refer to Mux 2x1 for further understanding.
