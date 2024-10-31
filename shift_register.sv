// this is a basic 8 bit shift register
// serial in parallel out!
module ShiftRegister(
    clk, 
    in, 
    reset,
    out
); 
    input clk; 
    input in; 
    input reset; 
    output reg [7:0] out; 
    
    always_ff @(posedge clk or posedge reset) begin 
        if(reset)
            out <= 7'b0000000;
        else 
            out <= {out[6:0], in};
    end
endmodule