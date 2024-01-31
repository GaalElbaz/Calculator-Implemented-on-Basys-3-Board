`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: basicCalc_Testbench
//////////////////////////////////////////////////////////////////////////////////


module basicCalc_Testbench();

    logic [9:0] sw;
    logic [7:0] led;
    
    Basic_Calculator U0(.sw(sw), .led(led));
    
    initial begin
        // add
        $display("add operation in time %t", $time);
        sw[3:0] = 5;
        sw[7:4] = 10;
        sw[8] = 0;
        sw[9] = 0;
        #20;
        // sub
        $display("sub operation in time %t", $time);
        sw[8] = 1;
        #20
        // mul
        $display("mul operation in time %t", $time);
        sw[9] = 1;
        sw[8] = 0;
        #20
        // div
        $display("div operation in time %t", $time);
        sw[8] = 1;
        #100;
    end
endmodule
