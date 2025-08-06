module tb_cla_4bit;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    cla_4bit uut(a, b, cin, sum, cout);
    initial begin
        a = 4'd7; b = 4'd6; cin = 0; #10;
        a = 4'd9; b = 4'd8; cin = 1; #10;
    end
endmodule
