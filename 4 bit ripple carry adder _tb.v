module tb_ripple_adder;
    reg [3:0] a, b;
    wire [3:0] sum;
    wire carry_out;
    ripple_adder uut(a, b, sum, carry_out);
    initial begin
        a = 4'd5; b = 4'd3; #10;
        a = 4'd15; b = 4'd1; #10;
    end
endmodule
