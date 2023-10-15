module RippleCarryAdder(
  input wire [3:0] A,
  input wire [3:0] B,
  output wire [3:0] Sum,
  output wire Cout
);

  wire [3:0] carry; // Carry outputs from each full adder

  FullAdder FA0 (.A(A[0]), .B(B[0]), .Cin(1'b0), .Sum(Sum[0]), .Cout(carry[0]));
  FullAdder FA1 (.A(A[1]), .B(B[1]), .Cin(carry[0]), .Sum(Sum[1]), .Cout(carry[1]));
  FullAdder FA2 (.A(A[2]), .B(B[2]), .Cin(carry[1]), .Sum(Sum[2]), .Cout(carry[2]));
  FullAdder FA3 (.A(A[3]), .B(B[3]), .Cin(carry[2]), .Sum(Sum[3]), .Cout(Cout));

endmodule

// This is an instanciated module. for further understanding, please refer to the Full Adder module clearly
