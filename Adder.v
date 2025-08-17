module fa(
    input x,y,cin,
    output sum,cout);
    assign sum = x^y^cin;
    assign cout= (x&y)|(y&cin)|(cin&x);
endmodule
module top_module(
    input [3:0]x,y,
    input cin,
    output [4:0]sum,
    output [3:0]cout);
    fa fa0(.x(x[0]),.y(y[0]),.cin(1'b0),.sum(sum[0]),.cout(cout[0]));
    fa fa1(.x(x[1]),.y(y[1]),.cin(cout[0]),.sum(sum[1]),.cout(cout[1]));
    fa fa2(.x(x[2]),.y(y[2]),.cin(cout[1]),.sum(sum[2]),.cout(cout[2]));
    fa fa3(.x(x[3]),.y(y[3]),.cin(cout[2]),.sum(sum[3]),.cout(cout[3]));
    assign sum[4]=cout[3];
endmodule
    
    
    
    
