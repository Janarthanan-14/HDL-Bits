module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] w1,w2,w3;
    //wire [7:0] w4;
    my_dff8 uut1 (.d(d),.clk(clk),.q(w1));
    my_dff8 uut2 (.d(w1),.clk(clk),.q(w2));
    my_dff8 uut3 (.d(w2),.clk(clk),.q(w3));
        
    always@(*)
        begin 
            case(sel)
                2'b00: q<=d [7:0];
                2'b01: q<=w1 [7:0];
                2'b10 :q<=w2 [7:0];
                2'b11: q<=w3 [7:0];
               // default: q<=1'b0;
            endcase
        end
endmodule
    
                
