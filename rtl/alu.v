module alu(
    input [5:0] op,
    input [31:0] rd1, rd2,
    output reg [31:0] wd
); 


 reg signed [31:0] srd1, srd2;
 
    always @* begin
        case (op)
            6'd1 : wd = rd1 + rd2;
            6'd2 : wd = rd1 - rd2;
            6'd3 : wd = rd1 ^ rd2;
            6'd4 : wd = rd1 | rd2;
            6'd5 : wd = rd1 & rd2;
            6'd6 : wd = rd1 << rd2;
            6'd8 : wd = rd1 >> rd2;
            6'd9 : begin
                srd1 = rd1;
                srd2 = rd2;
                wd = (srd1 < srd2) ? 1 : 0;
            end
            6'd10 : wd = (rd1 < rd2) ? 1 : 0;
            6'd7 : begin 

              srd1 = rd1;
              srd2 = rd2;
              wd = (srd1 >>> srd2);

            end 
            default : wd = 32'bx;
        endcase
    end

endmodule

