`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 09:36:40
// Design Name: 
// Module Name: top
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


module top(BTN,reset,CLK100MHZ,R1,G1,B1,R2,G2,B2);
input BTN,reset,CLK100MHZ;
output R1,G1,B1,R2,G2,B2;
wire Q0,X;
wire [1:0] hwy,fwy;
wire eo_100M;

Debounce N1(.BTN(BTN),.clk(CLK100MHZ),.rstn(reset),.Q(Q0));
T_FF N2 (.Q(X), .clk(CLK100MHZ), .rstn(reset), .en(1'b1), .T(Q0));
clock_enable_generator N3 (.clk(CLK100MHZ), .rstn(reset), .eo_100M(eo_100M), .eo_10k(eo_10k), .eo_1k(eo_1k));
TLC_FSM N4(.hwy(hwy),.fwy(fwy),.X(X),.en(eo_100M),.clk(CLK100MHZ),.rstn(reset));
Color_LED_Driver N5(.wy(hwy),.R(R1),.G(G1),.B(B1));
Color_LED_Driver N6(.wy(fwy),.R(R2),.G(G2),.B(B2));


endmodule
