module top_module(
    KEY, 
    GPIO_1,
    GPIO_0
);
    input reg [3:0] KEY;
    input reg [35:0] GPIO_1;
    
    output reg [35:0] GPIO_0;
    
    assign clk = ~KEY[0];
    
    ShiftRegister shift_register (
        .clk(clk), 
        .reset(1'b0), 
        .in(GPIO_1[0]),
        .out({GPIO_0[10],
            GPIO_0[12],
            GPIO_0[14],
            GPIO_0[16],
            GPIO_0[18],
            GPIO_0[20],
            GPIO_0[22],
            GPIO_0[24]})
    );

endmodule
