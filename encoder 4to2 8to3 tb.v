module tb_encoder_4to2;
    reg [3:0] d;
    wire [1:0] y;
    encoder_4to2 uut(d, y);
    initial begin
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0100; #10;
        d = 4'b1000; #10;
    end
endmodule
