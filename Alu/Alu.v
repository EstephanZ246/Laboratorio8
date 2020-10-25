
// se declaran las variables
module ALU(
A,
B,
Op,
R );
// se declara el tipo
input[7:0] A,B;
input[2:0] Op;
output[7:0] R;
wire[7:0] Reg1,Reg2;
reg[7:0] Reg3;
// El reg1 y reg2 almacenan el valor de las entradas. El reg3 almacena el valor de la salida
assign Reg1 = A;
assign Reg2 = B;
assign R = Reg3;
// se declara que el codigo hará efecto cada vez que pasen por el valor no cero
always@(posedge Op or posedge Reg1 or posedge Reg2)

/*
Se declaran los diferentes casos con los que podremos evaluar nuestras entradas,
para luego en el testbench solamente escrbir por ejemplo op=1; y obtener la
operacion que se desea.
*/

begin
case(Op)
3'b010: Reg3 = Reg1 + Reg2; // Suma
3'b110: Reg3 = Reg1 - Reg2;// resta
//3'b100: Reg3 =~Reg1;//NOT
3'b100: Reg3 =(Reg1 & ~Reg2);// A and ~B
3'b101: Reg3 =(Reg1 | ~Reg2);// A or ~B
3'b000: Reg3 = Reg1 & Reg2;//AND
3'b001: Reg3 = Reg1 | Reg2;//OR
3'b111: if (Reg1 < Reg2) Reg3 =1;
        else Reg3 = 0;
endcase
end
endmodule
