module tb_bcd_adder;
    reg [3:0] a, b;
    wire [3:0] sum;
    wire carry;
    bcd_adder uut(a, b, sum, carry);
    initial begin
        a = 4'd5; b = 4'd4; #10;
        a = 4'd6; b = 4'd7; #10;
    end
endmodule
