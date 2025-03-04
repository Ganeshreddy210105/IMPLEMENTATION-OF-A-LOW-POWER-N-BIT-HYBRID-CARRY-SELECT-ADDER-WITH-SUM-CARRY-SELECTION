`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2023 18:50:50
// Design Name: 
// Module Name: csla_32
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


module csla_32(a,b,cin,sum,cout);
input [31:0]a,b;
input cin;
output [31:0]sum;
output cout;
wire c1,c2;
csla_8_bit u0(a[7:0],b[7:0],cin,sum[7:0],c1);
csla_8_bit u1(a[15:8],b[15:8],c1,sum[15:8],c2);
csla_16 u2(a[31:16],b[31:16],c2,sum[31:16],cout);
endmodule
