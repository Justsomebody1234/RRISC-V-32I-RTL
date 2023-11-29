`define add      17'h33  
`define sub      17'h8033
`define xor      17'h233 
`define or       17'h333 
`define and      17'h3B3 
`define sll      17'hB3  
`define srl      17'h2B3 
`define sra      17'h82B3
`define slt      17'h133 
`define sltu     17'h1B3 

`define addi     17'h13  
`define xori     17'h213 
`define ori      17'h313 
`define andi     17'h393 
`define slli     17'h93  
`define srli     17'h293 
`define srai     17'h8293
`define slti     17'h89  
`define sltiu    17'h193 
`define lb       17'h3   
`define lh       17'h83  
`define lw       17'h103 
`define lbu      17'h203 
`define lhu      17'h283 
`define jalr     17'h67  

`define sb       17'h23
`define sh       17'hA3
`define sw       17'h123
 
`define beq      17'h63
`define bne      17'hE3
`define blt      17'h263
`define bge      17'h2E3
`define bltu     17'h363
`define bgeu     17'h3E3

`define jal      17'h6F

`define lui      17'h37
`define auipc    17'h17


module control_logic(
    input [16:0] opcodes,
    output [5:0] aluop
);

    always @(*) begin
        aluop = 6'bx;
        case (opcodes)

            `add   : aluop = 6'd1  ;
            `sub   : aluop = 6'd2  ;
            `xor   : aluop = 6'd3  ;
            `or    : aluop = 6'd4  ;
            `and   : aluop = 6'd5  ;
            `sll   : aluop = 6'd6  ;
            `srl   : aluop = 6'd7  ;
            `sra   : aluop = 6'd8  ;
            `slt   : aluop = 6'd9  ;
            `sltu  : aluop = 6'd10 ;
            `addi  : aluop = 6'd11 ;
            `xori  : aluop = 6'd12 ;
            `ori   : aluop = 6'd13 ;
            `andi  : aluop = 6'd14 ;
            `slli  : aluop = 6'd15 ;
            `srli  : aluop = 6'd16 ;
            `srai  : aluop = 6'd17 ;
            `slti  : aluop = 6'd18 ;
            `sltiu : aluop = 6'd19 ;
            `lb    : aluop = 6'd20 ;
            `lh    : aluop = 6'd21 ;
            `lw    : aluop = 6'd22 ;
            `lbu   : aluop = 6'd23 ;
            `lhu   : aluop = 6'd24 ;
            `jalr  : aluop = 6'd25 ;
            `sb    : aluop = 6'd26 ;
            `sh    : aluop = 6'd27 ;
            `sw    : aluop = 6'd28 ;
            `beq   : aluop = 6'd29 ;
            `bne   : aluop = 6'd30 ;
            `blt   : aluop = 6'd31 ;
            `bge   : aluop = 6'd32 ;
            `bltu  : aluop = 6'd33 ;
            `bgeu  : aluop = 6'd34 ;
            `jal   : aluop = 6'd35 ;
            `lui   : aluop = 6'd36 ;
            `auipc : aluop = 6'd37 ;
            
        endcase
    end
    
endmodule