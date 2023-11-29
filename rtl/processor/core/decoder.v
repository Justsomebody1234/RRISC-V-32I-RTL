module decoder(
    input [31:0] inscode,
    output [4:0] ra1,ra2,rd
);
    
    always @ (*) begin
        
        rs1 =   inscode[19:15];
        rs2 =   inscode[24:20];    
        rd  =   inscode[11:7] ;

    end



endmodule