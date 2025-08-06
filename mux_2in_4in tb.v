module tb_mux_2in_4in;
    reg [1:0] sel;
    reg [3:0] d;
    wire y;
    mux_2in_4in uut(sel, d, y);
    initial begin
        d = 4'b1010;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
    end
endmodule
