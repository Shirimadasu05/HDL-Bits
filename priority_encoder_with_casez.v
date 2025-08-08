// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always@(*)
        begin
    casez (in[7:0])
     
        8'b zzzz_zzz1: pos = 4'd0;
        8'b zzzz_zz10: pos = 4'd1;
        8'b zzzz_z100: pos = 4'd2;
        8'b zzzz_1000: pos = 4'd3;
        8'b zzz1_0000: pos = 4'd4;
        8'b zz10_0000: pos = 4'd5;
        8'b z100_0000: pos = 4'd6;
        8'b 1000_0000: pos = 4'd7;
        default : pos = 4'd0;
  
    endcase
        end
        
endmodule
