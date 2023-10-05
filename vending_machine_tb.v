`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 18:33:21
// Design Name: 
// Module Name: vending_machine_tb
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


module vending_machine_tb();
reg clk;
reg[1:0] in;
reg rst;
wire out;
wire[1:0] change;
vending_machine DUT(clk,rst,in,out,change);
initial begin
rst = 1;
clk = 0;
#6 rst = 0;
in = 2;
#19 in = 2;
#25 $finish;
end
always #5 clk = ~clk;
endmodule
