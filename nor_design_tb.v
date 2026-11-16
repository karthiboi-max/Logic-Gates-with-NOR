
module nor_gates_tb;

reg A, B;
wire AND_out, OR_out, NOT_out;

integer i;

nor_gates uut(A, B, AND_out, OR_out, NOT_out);

initial
begin

    $dumpfile("nor_gates.vcd");
    $dumpvars(0, nor_gates_tb);

    $display("A B | AND OR NOT");
    $display("----------------");

    for(i = 0; i < 4; i = i + 1)
    begin
        {A, B} = i;
        #10;

        $display("%b %b |  %b   %b   %b",
                 A, B, AND_out, OR_out, NOT_out);
    end

    $finish;

end

endmodule

