`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 10:49:22
// Design Name: 
// Module Name: tb
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


module testbench;
reg clk = 0;
reg rst ,X ;
wire [1:0] hwy, fwy;
module sig_controller (hwy,fwy, X, clk,rst) ;
initial forever #5 clk = ~ clk; // or always # clk = ~ clk;
initial begin
rst = 1;
#10 rst = 0; X = 1;
#40 X = 0;
#20 X = 1;
#10 rst = 1;
#10 rst = 0;
#20 $stop;
end
endmodule
