`include "alu.v"
`include "control_unit.v"
`include "register_file.v"

module Risc_v(
    input [31:0]instruction,
    input clk
);
    
    wire [5:0] alu_instruction;
    wire top_werf;
    wire [31:0] reg_to_alu1,reg_to_alu2, alu_to_wd;





    control_logic  cl_ins1(
        .opcodes({instruction[31:25] ,instruction[14:12] ,instruction[6:0] }),
        .aluop(alu_instruction),
        .werf(top_werf)
    );


    register re_ins1(

        .rs1(instruction[19:15]),
        .rs2(instruction[24:20]),
        . WA(instruction[11:7]),
        . WE(werf),
        . WD(alu_to_wd),
        .clk(clk),
        .RD1(reg_to_alu1),
        .RD2(reg_to_alu2)

    );
    

    alu alu_ins1(
        .op(alu_instruction),
        .rd1(reg_to_alu1),
        .rd2(reg_to_alu2),
        .wd(alu_to_wd)
    );

endmodule
