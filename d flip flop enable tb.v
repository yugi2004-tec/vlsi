module tb_d_ff_en;
    reg clk, en, d;
    wire q;
    d_ff_en uut(clk, en, d, q);
    initial begin
        clk = 0; forever #5 clk = ~clk;
    end
    initial begin
        en = 0; d = 0; #10;
        en = 1; d = 1; #10;
        d = 0; #10;
        en = 0; d = 1; #10;
    end
endmodule
