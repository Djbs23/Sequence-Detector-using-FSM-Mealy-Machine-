`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 00:34:22
// Design Name: 
// Module Name: Sequence_Detector
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

//0110
module Sequence_Detector(clk,reset,x,z);
input clk,reset,x;
output reg z;
reg [1:0] state_1, state_2;
parameter S0=0,S1=1,S2=2,S3=3;

always@(posedge clk) begin
    if(reset)begin
        state_1 <=S0;end
    else begin
        state_1 <= state_2;
    end
end
always@(state_1,x)begin
    case(state_1)
        S0: begin
            z = x?0:0;
            state_2 = x ? S0:S1;
            end

        S1: begin
            z = x?0:0;
            state_2 = x ? S2:S1;
            end
            
        S2: begin
            z = x?0:0;
            state_2 = x ? S3:S1;
            end

        S3: begin
            z = x?0:1;
            state_2 = x ? S0:S1;
            end
endcase
end
endmodule