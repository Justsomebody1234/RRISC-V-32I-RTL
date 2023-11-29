
module register(
    rs1,rs2,
    WA,WE,WD,
    clk,
    RD1,RD2
);
    input [4:0] rs1, rs2, WA;
    input [31:0] WD;
    input clk, WE;
    output reg [31:0] RD1, RD2;

    reg [31:0] mem [0:31];

    always @ (rs1 or rs2) begin 
     if (rs1 == 5'b0) RD1 = 32'b0;
	  else RD1 = mem[rs1];
      
	  if (rs2 == 5'b0) RD2 = 32'b0;
	  else RD2 = mem[rs2];
    end 

    always @(posedge clk) begin

        if (WE)  mem[WA] = WD;
        else ;

            
    end


endmodule