module rom_tb;
// definimos los registros y cables del testbench
 reg [7:0] direccion;
 reg leer, escribir;
 wire [7:0] salida;
 integer i;
// La parte en la que introducimos valores a nuestro codigo principal
 initial begin
   direccion = 0;
   leer = 0;
   escribir      = 0;
   #10 $monitor ("Direccion = %h, salida = %h, leer = %b, escribir = %b", direccion, salida, leer, escribir);
/// esta parte es para recorrer todos los valores segun el rango que
//definimos.
   for (i = 0; i <3999; i = i +1 )begin
     #5 direccion = i;
     leer = 1;
     escribir = 1;
     #5 leer = 0;
     escribir = 0;
     direccion = 0;
   end
 end
// instancia de nuestro módulo
memoria U(
escribir ,
direccion    ,
leer ,
salida
);

// Gtk wave
initial begin
 $dumpfile("memoria_tb.vcd");
 $dumpvars(0,rom_tb);
end
endmodule
