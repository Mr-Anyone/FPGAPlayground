module vDff(
    clk, 
    d, 
    q, 
    reset
);
    input clk;
    input d; 
    input reset; 
    output reg q;  

    reg temp;
    always_comb begin 
        if(reset == 1'b1)
            temp = 1'b0;
        else 
            temp = d;
    end

    always_ff @(posedge clk) begin
        q <= temp;
    end
endmodule