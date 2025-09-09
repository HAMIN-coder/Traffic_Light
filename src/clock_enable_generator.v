`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 09:33:52
// Design Name: 
// Module Name: clock_enable_generator
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


module clock_enable_generator(input clk, input rstn, output eo_100M,eo_10k,eo_1k);
wire tcl, tc2, tc3, tc4, tc5, tc6, tc7, tc8;

BCD_C CNT0(.Q(), .TC(tcl), .inc(1'b1), .rstn(rstn), .clk(clk));
BCD_C CNT1(.Q(), .TC(tc2), .inc(tcl), .rstn(rstn), .clk(clk));
BCD_C CNT2(.Q(), .TC(tc3), .inc(tc2), .rstn(rstn), .clk(clk));
BCD_C CNT3(.Q(), .TC(tc4), .inc(tc3), .rstn(rstn), .clk(clk));
BCD_C CNT4(.Q(), .TC(tc5), .inc(tc4), .rstn(rstn), .clk(clk));
BCD_C CNT5(.Q(), .TC(tc6), .inc(tc5), .rstn(rstn), .clk(clk));
BCD_C CNT6(.Q(), .TC(tc7), .inc(tc6), .rstn(rstn), .clk(clk));
BCD_C CNT7(.Q(), .TC(tc8), .inc(tc7), .rstn(rstn), .clk(clk));

assign eo_100M = tc8;
assign eo_10k = tc5;
assign eo_1k = tc3;//100kHz

endmodule
