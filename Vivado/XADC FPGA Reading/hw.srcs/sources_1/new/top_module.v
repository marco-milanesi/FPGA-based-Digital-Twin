`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 10:38:53
// Design Name: 
// Module Name: top_module
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


module top_module(
   input CLK100MHZ,
   input vp_in,
   input vn_in,
   input vauxp0,
   input vauxn0,
   input vauxp1,
   input vauxn1,
   input vauxp2,
   input vauxn2,
   input vauxp3,
   input vauxn3,
   input vauxp8,
   input vauxn8,
   input vauxp9,
   input vauxn9,
   input vauxp10,
   input vauxn10,
   input vauxp11,
   input vauxn11,
   output [5:0] LED
    );
    
    XADCdemo u1 (
   .CLK100MHZ(CLK100MHZ),
   .vp_in(vp_in),
   .vn_in(vn_in),
   .vauxp0(vauxp0),
   .vauxn0(vauxn0),
   .vauxp1(vauxp1),
   .vauxn1(vauxn1),
   .vauxp2(vauxp2),
   .vauxn2(vauxn2),
   .vauxp3(vauxp3),
   .vauxn3(vauxn3),
   .vauxp8(vauxp8),
   .vauxn8(vauxn8),
   .vauxp9(vauxp9),
   .vauxn9(vauxn9),
   .vauxp10(vauxp10),
   .vauxn10(vauxn10),
   .vauxp11(vauxp11),
   .vauxn11(vauxn11),
   .LED(LED)
);


endmodule
