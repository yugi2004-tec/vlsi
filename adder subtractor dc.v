module add_sub(input [3:0] a, b, input sub, output [3:0] result, output carry);
    wire [3:0] b2c = b ^ {4{sub}};
    assign {carry, result} = a + b2c + sub;
endmodule
