module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire and_1out , and_2out , and_3out , and_4out ;
    assign and_1out= p1a & p1b & p1c ;
    assign and_2out= p1d & p1e & p1f ;
    assign p1y= and_1out | and_2out ;
    
    assign and_3out=p2a & p2b;
    assign and_4out=p2c & p2d;
    assign p2y=and_3out |and_4out;
    

endmodule
