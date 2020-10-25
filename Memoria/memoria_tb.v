module rom_tb;
 reg [7:0] direccion;
 reg leer, escribir;
 wire [7:0] salida;
 integer i;

 initial begin
   direccion = 0;
   leer = 0;
   escribir      = 0;
   #10 $monitor ("Direccion = %h, salida = %h, leer = %b, escribir = %b", direccion, salida, leer, escribir);
   for (i = 0; i <256; i = i +1 )begin
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

endmodule
