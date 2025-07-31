module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] a1,a2;
    wire cout;
    add16 ins1 ( .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(a1), .cout(cout) );
    add16 ins2 ( .a(a[31:16]), .b(b[31:16]), .cin(cout), .sum(a2), .cout() );
    assign sum = {a2,a1};
endmodule
