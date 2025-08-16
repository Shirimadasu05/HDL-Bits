module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output reg [15:0] out );
    always@(*)
        begin
            case(sel)
                4'b0000: out[15:0]=a;
                4'b0001: out[15:0]=b;
                4'b0010: out[15:0]=c;
                4'b0011: out[15:0]=d;
                4'b0100: out[15:0]=e;
                4'b0101: out[15:0]=f;
                4'b0110: out[15:0]=g;
                4'b0111: out[15:0]=h;
                4'b1000: out[15:0]=i;
                4'b1001: out[15:0]=16'hffff;
                4'b1010: out[15:0]=16'hffff;
                4'b1011: out[15:0]=16'hffff;
                4'b1100: out[15:0]=16'hffff;
                4'b1101: out[15:0]=16'hffff;
                4'b1110: out[15:0]=16'hffff;
                4'b1111: out[15:0]=16'hffff;
            endcase
        end
endmodule
