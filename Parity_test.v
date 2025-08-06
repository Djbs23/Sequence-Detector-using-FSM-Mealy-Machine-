`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2025 22:28:08
// Design Name: 
// Module Name: Parity_test
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


module Parity_test();
reg clk,x,reset;
wire z;

Parity_Generator tb(.clk(clk),.x(x),.reset(reset),.z(z));

initial begin

clk =0;
forever #5 clk=~clk;
end

initial begin
#5 reset=1;
#10 reset =0;
#40 x=1; #40 x=0;
#40 x=1; #40 x=0;
#40 x=1; #45 x=0;
#45 x=1; #45 x=0;
#40 x=1; #40 x=0;
$finish;
end
endmodule
