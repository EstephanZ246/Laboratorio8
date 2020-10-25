module ALU_tb;
// Entradas
reg[7:0] A;
reg[7:0] B;
reg[2:0] Op;
// salidas
wire[7:0] R;
// instancia de nuestro codigo
ALU a1( A,B,Op,R);

// se inicia colocando un título a nuestras tablas y colocando los valores
// que deseamos que se desplieguen cuando se ejecute el testbench

initial begin
#10 $display(" ");
$display(" ");
$display(" Operaciones con ALU");
$display("A B Salida");
$display("____________");
$monitor(" %b    %b    %b   ", A ,B ,R);
end

initial begin
// Se colocan los valores que queremos operar
A =8'b10101010;
B =8'b00001111;

// se prueban las diferentes operaciones que se implementaron en el código.
Op =0;
#10 Op =3'b010;
#10 Op =3'b110;
#10 Op =3'b100;
#10 Op =3'b101;
#10 Op =3'b000;
#10 Op =3'b001;
#10 Op =3'b111;
$finish;
end
// se crea archivos de gtkwave y para ver los diagramas de timing
initial begin
 $dumpfile("Alu_tb.vcd");
 $dumpvars(0,ALU_tb);
end

endmodule
