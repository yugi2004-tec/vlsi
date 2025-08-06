module all_gates_tb;
reg a,b;
wire and_out,nand_out,or_out,nor_out,xor_out,xnor_out,not_out;
  
  all_gates g(
    .and_out(and_out),
    .nand_out(nand_out),
    .or_out(or_out),
    .nor_out(nor_out),
    .xor_out(xor_out),
    .xnor_out(xnor_out),
    .not_out(not_out),
    .a(a),
    .b(b)
  );
initial begin;
    $dumpfile("all_gates_tb.vcd");
    $dumpvars;
  $monitor( "At time %0t: and_out=%b nand_out=%b or_out=%b nor_out=%=b xor_out=%b xnor_out=%b not_out=%b",        $time,and_out,nand_out,or_out,nor_out,xor_out,xnor_out,not_out );
           a=0;b=0;
      #10  a=0;b=1; 
      #10  a=1;b=0;  
      #10  a=1;b=1;
      #10;
    $finish;
  end
endmodule
