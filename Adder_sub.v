module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]x;
    wire w1,w2;
    assign x=b^{32{sub}};
    add16 ins1 ( .a(a[15:0]), .b(x[15:0]), .cin(sub), .sum(sum[15:0]), .cout(w1) );
    add16 ins2 ( .a(a[31:16]), .b(x[31:16]), .cin(w1), .sum(sum[31:16]), .cout(w2) );
endmodule
