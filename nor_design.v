
module nor_gates(A, B, AND_out, OR_out, NOT_out);

input A, B;
output AND_out, OR_out, NOT_out;

wire nA, nB, nOR;

// NOT gate using NOR
nor G1(nA, A, A);

// NOT gate for B
nor G2(nB, B, B);

// OR gate using NOR
nor G3(nOR, A, B);
nor G4(OR_out, nOR, nOR);

// AND gate using NOR
nor G5(AND_out, nA, nB);

// NOT A output
assign NOT_out = nA;

endmodule

