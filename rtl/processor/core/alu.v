// `include "R_type_ins.v"
// `include "program_counter.v"
// `include "register.v"
// `include "ALU.v"

`include "control_unit.v"

module alu(
    input [31:0] instruction,
    output reg [31:0] wd
);


always @(*) begin

 case (op)
    6'd1 : wd = rs1 + rs2;
    6'd2 : wd = rs1 - rs2;
    6'd3 : wd = rs1 ^ rs2;
    6'd4 : wd = rs1 | rs2;
    6'd5 : wd = rs1 & rs2;
    6'd6 : wd = rs1 << rs2;
    6'd7 : wd = rs1 >>> rs2;
    6'd8 : wd = rs1 >> rs2;
    6'd9 : wd = (rs1 < rs2)? 1 : 0;
   6'd10 : wd = (rs1 < rs2)? 1 : 0;
 default : wd = 32'bx;
 
 endcase
    
end

endmodule 