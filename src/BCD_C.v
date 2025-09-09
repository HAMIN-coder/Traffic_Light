`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 09:35:01
// Design Name: 
// Module Name: BCD_C
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

module BCD_C(Q, TC, inc, rstn, clk);
output reg [3:0] Q;
output TC;
input inc, rstn, clk;


always @(posedge clk, negedge rstn)
 if (!rstn) 
    Q <= 4'd0;
 else if (inc)
    if (Q == 4'd9) 
        Q <= 4'd0;
    else 
        Q <= Q + 1;

assign TC = (Q == 4'd9 && inc) ? 1 : 0;


endmodule
