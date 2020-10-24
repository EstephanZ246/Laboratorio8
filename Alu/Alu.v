module ALU(
A,
B,
Op,
R );

input[7:0] A,B;
input[2:0] Op;
output[7:0] R;
wire[7:0] Reg1,Reg2;
reg[7:0] Reg3;

assign Reg1 = A;
assign Reg2 = B;

assign R = Reg3;

always@(posedge Op or posedge Reg1 or posedge Reg2)

begin
case(Op)
0: Reg3 = Reg1 + Reg2; // Suma
1: Reg3 = Reg1 - Reg2;// resta
2: Reg3 =~Reg1;//NOT
3: Reg3 =~(Reg1 & Reg2);//NAND
4: Reg3 =~(Reg1 | Reg2);//NOR
5: Reg3 = Reg1 & Reg2;//AND
6: Reg3 = Reg1 | Reg2;//OR
7: Reg3 = Reg1 ^ Reg2;//XOR
endcase
end
endmodule
