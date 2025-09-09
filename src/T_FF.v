`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 09:45:11
// Design Name: 
// Module Name: T_FF
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


module T_FF (
    output reg Q,
    input clk, rstn, en,
    input T
);

always @(posedge clk or negedge rstn) begin
    if(!rstn)       Q <=  0;
    else if(en & T) Q <= ~Q;
end

endmodule
