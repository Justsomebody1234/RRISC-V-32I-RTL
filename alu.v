module alu(
    input [5:0] op,
    input [31:0] rd1, rd2,
    output reg [31:0] wd
);


always @(*) begin

 case (op)
    6'd1 : wd =  rd1  +   rd2;
    6'd2 : wd =  rd1  -   rd2;
    6'd3 : wd =  rd1  ^   rd2;
    6'd4 : wd =  rd1  |   rd2;
    6'd5 : wd =  rd1  &   rd2;
    6'd6 : wd =  rd1  <<  rd2;
    6'd7 : wd =  rd1  >>> rd2;
    6'd8 : wd =  rd1  >>  rd2;
    6'd9 : wd = (rd1  <   rd2)? 1 : 0;
   6'd10 : wd = (rd1  <   rd2)? 1 : 0;
 default : wd = 32'bx;
 
 endcase
    
end

endmodule 


