module bcd_adder(input [3:0] a, b, output [3:0] sum, output carry);
    wire [4:0] temp = a + b;
    assign {carry, sum} = (temp > 9) ? temp + 6 : temp;
endmodule
