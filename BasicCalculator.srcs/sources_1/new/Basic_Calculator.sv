`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Basic_Calculator
// 
//////////////////////////////////////////////////////////////////////////////////


module Basic_Calculator(
    input [9:0] sw,
    output[7:0] led
    );
    
    wire [7:0] add,sub,mul,div;
    
    assign add = sw[7:4] + sw[3:0];
    assign sub = sw[7:4] - sw[3:0];
    assign mul = sw[7:4] * sw[3:0];
    assign div = sw[7:4] / sw[3:0];
    
    // We have to duplicate the bits so we can preform a correct operation
    assign led = {8{~sw[9]}} & {8{~sw[8]}} & add | {8{~sw[9]}} & {8{sw[8]}} & sub |
                    {8{sw[9]}} & {8{~sw[8]}} & mul | {8{sw[9]}} & {8{sw[8]}} & div;
                  
    
endmodule
