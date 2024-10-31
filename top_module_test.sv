module top_module_test(); 
    reg clk;
    reg in;
    reg reset;
    reg [7:0] out;
    
    
    ShiftRegister shift_register (
        .clk(clk), 
        .reset(reset), 
        .in(in),
        .out(out)
    );

    initial begin 
        forever begin 
            clk = 1'b1; #5 
            clk = 1'b0; #5;
        end
    end

    initial begin 
        #2
        in = 1'b1;
        reset = 1'b1;
        #1 
        reset = 1'b0;
        
        #10
        in = 1'b0; 
        #70 
        // wated for 8 clock cycles

        $stop;
    end 

endmodule