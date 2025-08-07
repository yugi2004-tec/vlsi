module tb_t_ff;
    reg clk, rst, t;
    wire q;
    t_ff uut(clk, rst, t, q);
    initial begin
        clk = 0; forever #5 clk = ~clk;
    end
    initial begin
        rst = 1; t = 0; #10;
        rst = 0; t = 1; #50;
        t = 0; #20;
    end
endmodule
