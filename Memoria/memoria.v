module memoria( escribir,direccion,leer, salida);
// Definimos entradas y salidas
input leer;
input escribir;
input [7:0] direccion;
output [7:0] salida;
// Definimos en largo de la palabra y la cantidad de palabras que tendremos
// O el si lo vemos de otro modo las filas y columnas
reg [7:0] memoria1 [0:3999];
// Asignamos la salida dependiendo de la dirección y el "enable" que nos
//permite leer  o no la memoria
assign salida = (escribir && leer) ? memoria1[direccion] : 8'b0;
// leemos los datos del archivo
initial begin
  $readmemb("memory.list",memoria1);
end

 endmodule
