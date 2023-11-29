module register(
    read_address_1,
    read_address_2,
    WA,
    WE,
    WD,
    clk,
    RS1,
    RS2
);
    input [4:0] read_address_1, read_address_2, WA;
    input [31:0] WD;
    input clk, WE;
    output reg [31:0] RS1,RS2;

    reg [31:0] mem [0:31];

    always @ (read_address_1 or read_address_2) begin 
        mem[0] = 32'b0;
        RS1 = mem[read_address_1];
        RS2 = mem[read_address_2]; 
    end 

    always @(posedge clk) begin

        if (WE)  mem[WA] = WD;
        else ;

            
    end


endmodule