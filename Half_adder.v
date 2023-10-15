module HalfAdder(
  input wire A, // First input bit
  input wire B, // Second input bit
  output wire Sum, // Sum output
  output wire Carry // Carry output
);

  assign Sum = A ^ B; // XOR operation for sum
  assign Carry = A & B; // AND operation for carry

endmodule
