`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2025 00:59:18
// Design Name: 
// Module Name: sequence_detector_tb
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


module sequence_detector_tb();
reg clk,x,reset;
wire z;

Sequence_Detector tb(.clk(clk),.x(x),.reset(reset),.z(z));

initial begin
clk =0;
forever #5 clk = ~clk;
end
initial begin
reset =1;
#50 reset =0;
end

initial begin

#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
#10 x = 1; #10 x = 1; #10 x = 0; #10 x = 1;
#10 x = 1; #10 x = 0; #10 x = 1; #10 x = 0;
#10 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
#10 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
#30 $finish;
end
endmodule
