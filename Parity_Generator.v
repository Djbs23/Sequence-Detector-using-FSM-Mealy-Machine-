`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2025 22:10:27
// Design Name: 
// Module Name: Parity_Generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Parity_Generator(clk,reset,x,z);
input clk,x,reset;
output reg z;

reg odd_even_detect;
parameter EVEN=0, ODD=1;

always@(posedge clk)begin
    if(reset)begin
        odd_even_detect <= EVEN;
        end
     else begin
        case(odd_even_detect)
            EVEN: odd_even_detect<= x ? ODD:EVEN;
            ODD: odd_even_detect<= x ? EVEN:ODD;
            default: odd_even_detect <= EVEN;
        endcase
end
end
always@(odd_even_detect) begin
    case(odd_even_detect)
        EVEN: z = 0;
        ODD: z = 1;
    endcase
end
endmodule
