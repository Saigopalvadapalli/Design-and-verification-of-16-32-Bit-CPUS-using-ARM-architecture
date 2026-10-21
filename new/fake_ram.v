`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 17:41:21
// Design Name: 
// Module Name: fake_ram
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


module fake_ram(
   input I_clk,
   input I_we,
   input [15:0] I_addr,
   input [15:0] I_data,
   output reg [15:0] O_data
    );
    
    reg [15:0] mem[8:0];
    
    initial begin
      mem[0]=16'b0000000011111101;
      mem[1]=16'b0001000111101101;
      mem[2]=16'b0010001000100001;
      mem[3]=16'b0011001100000001;
      mem[4]=16'b0100010000000001;
      mem[5]=16'b1000001101110001;
      mem[6]=16'b1100000000000101;
      mem[7]=0;
      mem[8]=0;
      
      O_data=16'b0000000000000000;
      
    end
    always@(negedge I_clk) begin
       if(I_we) begin
          mem[I_addr[15:0]] <=I_data;
          end
          O_data <= mem[I_addr[15:0]];
        end
endmodule
