module mux_2in_4in(input [1:0] sel, input [3:0] d, output y);
    assign y = sel == 2'b00 ? d[0] :
               sel == 2'b01 ? d[1] :
               sel == 2'b10 ? d[2] : d[3];
endmodule
