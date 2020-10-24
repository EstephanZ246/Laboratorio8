module ALU_tb;
// Inputs
reg[7:0] A;
reg[7:0] B;
reg[2:0] Op;
// Outputs
wire[7:0] R;
// Instantiate the Unit Under Test (UUT)
ALU a1( A,B,Op,R);


initial begin
#10 $display(" ");
$display(" ");
$display(" Operaciones con ALU");
$display("A B Salida");
$display("____________");
$monitor(" %b    %b    %b   ", A ,B ,R);
end
// Apply inputs.
initial begin
A =8'b10101010;
B =8'b00001111;
Op =0;
#10 Op =1;
#10 Op =2;
#10 Op =3;
#10 Op =4;
#10 Op =5;
#10 Op =6;
#10 Op =7;
$finish;
end

initial begin
 $dumpfile("Alu_tb.vcd");
 $dumpvars(0,ALU_tb);
end

endmodule
