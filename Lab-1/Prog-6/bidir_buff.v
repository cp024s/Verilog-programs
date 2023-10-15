module BidirectionalBuffer (
  input wire enable,
  inout wire data
);
  assign data = enable ? data : 1'bz; // Tri-state buffer logic
endmodule
