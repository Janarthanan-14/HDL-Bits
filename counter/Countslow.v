module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    always@(posedge clk)
        begin
            if(reset || q==4'b1001 && slowena )
                q<=0;
            else if (slowena ==1)
			   q <= q+1'b1;
        end
           

endmodule
