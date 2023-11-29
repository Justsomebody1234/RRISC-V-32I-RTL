`include "core/alu.v"
`include "core/control_unit.v"
`include "core/datapath.v"
`include "core/register_file.v"
`include "memory/data_memory.v"
`include "memory/instruction_memory.v"



module Risc_v(
    input [31:0]instruction
);
    
    reg [5:0] alu_instruction;

    control_unit(
        .opcodes({instruction[31] ,instruction[14:12] ,instruction[6:0] })
        .aluop(alu_instruction)

    )


endmodule