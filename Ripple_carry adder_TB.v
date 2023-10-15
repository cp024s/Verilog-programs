module RippleCarryAdder_TB;

  reg [3:0] A;         // 4-bit input A
  reg [3:0] B;         // 4-bit input B
  wire [3:0] Sum;      // 4-bit output Sum
  wire Cout;           // Carry output

  // Instantiate the RippleCarryAdder module
  RippleCarryAdder DUT (.A(A), .B(B), .Sum(Sum), .Cout(Cout));

  // Stimulus generation
  initial begin
    $display("A  B  Sum  Cout");
    for (A = 0; A < 16; A = A + 1) begin
      for (B = 0; B < 16; B = B + 1) begin
        #10; // Wait for a while to let the outputs settle
        $display("%b %b %b %b", A, B, Sum, Cout);
      end
    end
    $finish; // Finish the simulation
  end

endmodule
