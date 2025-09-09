`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 10:25:33
// Design Name: 
// Module Name: Color_LED_Driver
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

module Color_LED_Driver( wy,R,G,B);
input [1:0] wy;
output R,G,B;
reg [1:0] R,G,B;

 always @*
  case (wy)
  `YELLOW: begin // YELLOW 
    R = 1'b1;
    G = 1'b1;
    B = 1'b0;
  end
  `RED:begin // RED
    R = 1'b1;  
    G = 1'b0;
    B = 1'b0;
  end
  `GREEN:begin // GREEN
    R = 1'b0;
    G = 1'b1;
    B = 1'b0;
  end
  default: B = 1'b0;

  endcase  
endmodule