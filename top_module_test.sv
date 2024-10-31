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
        #5 
        $stop
    end 

endmodule