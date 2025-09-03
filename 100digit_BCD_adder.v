module top_module( 
    input  [399:0] a, 
    input  [399:0] b,
    input cin,
    output  cout,
    output [399:0] sum );

    wire [100:0] c;
    assign c[0] = cin;

    bcd_fadd fa [99:0] (.a (a), .b(b),.cin (c[99:0]),.cout(c[100:1]),.sum (sum));
    assign cout = c[100];
endmodule
