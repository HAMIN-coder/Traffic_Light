`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 09:47:16
// Design Name: 
// Module Name: TLC_FSM
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

//traffic light definition
`define YELLOW 2'd0
`define RED 2'd1
`define GREEN 2'd2
//state sddignment definition
`define S0 2'b00
`define S1 2'b01
`define S2 2'b10
`define S3 2'b11

module TLC_FSM(hwy,fwy,X,en,clk,rstn);
input X,clk,rstn,en;
output [1:0] hwy,fwy;
reg [1:0] hwy,fwy;
reg [1:0] cs,nst;

always @(posedge clk or negedge rstn)
   if(!rstn) cs <= `S0;
   else if(en) cs <= nst;
   
always @(cs or X) case (cs)
    `S0 : if(X) nst =`S1; else nst = `S0;
    `S1 : nst = `S2;
    `S2 : if(X) nst =`S2; else nst = `S3;
    `S3 : nst = `S0;
endcase
always@(cs)
    case (cs)
`S0 : begin hwy = `GREEN; fwy = `RED; end
`S1 : begin hwy = `YELLOW; fwy = `RED; end
`S2 : begin hwy = `RED; fwy = `GREEN; end   
`S3 : begin hwy = `RED; fwy = `YELLOW; end
endcase

endmodule
