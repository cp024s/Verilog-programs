module FullAdder(
  input wire A, // First input bit
  input wire B, // Second input bit
  input wire Cin, // Carry input
  output wire Sum, // Sum output
  output wire Cout // Carry output
);

  wire Sum1, Cout1, Cout2;

  // First half adder (HA1) adds A and B
  HalfAdder HA1 (
    .A(A),
    .B(B),
    .Sum(Sum1),
    .Carry(Cout1)
  );

  // Second half adder (HA2) adds Sum1 and Cin
  HalfAdder HA2 (
    .A(Sum1),
    .B(Cin),
    .Sum(Sum),
    .Carry(Cout2)
  );

  // The carry output of the full adder is the OR of Cout1 and Cout2
  assign Cout = Cout1 | Cout2;

endmodule

// WARNING
// This is an instanciated module; please refer to the * half adder * for further understanding.
