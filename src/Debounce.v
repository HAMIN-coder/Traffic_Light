`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 09:25:07
// Design Name: 
// Module Name: Debounce
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


module Debounce(BTN, clk, rstn, Q);
input BTN, clk, rstn;
output Q;
wire t1, t2;

D_FF u1 (.clk(clk), .rstn(rstn), .D(BTN), .en(1'b1), .Q(t1));
D_FF u2 (.clk(clk), .rstn(rstn), .D(t1), .en(1'b1), .Q(t2));
and  u3 (Q, ~t2, t1);

endmodule
