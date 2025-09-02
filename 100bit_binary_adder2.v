module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
module top_module( 
    input  [99:0] a, b,
    input  cin,
    output [99:0] cout,
    output [99:0] sum 
);

    wire [100:0] c;
    assign c[0] = cin; 
    full_adder fa[99:0] (.a   (a),.b   (b),.cin (c[99:0]),.sum (sum),.cout(c[100:1]) );
    assign cout = c[100:1]; 

endmodule
