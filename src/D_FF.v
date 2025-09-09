`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 09:27:03
// Design Name: 
// Module Name: D_FF
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

module D_FF (Q, en, D, clk, rstn);
output reg  Q;
input D, en, clk, rstn;

always @(posedge clk or negedge rstn)
    if(!rstn) Q<=1'b0;
    else if(en) Q <= D;
 
endmodule
