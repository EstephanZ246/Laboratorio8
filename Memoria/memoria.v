module memoria( escribir,direccion,leer, salida);

input leer;
input escribir;
input [7:0] direccion;
output [7:0] salida;

reg [7:0] memoria1 [0:3999];

assign salida = (escribir && leer) ? memoria1[direccion] : 8'b0;

initial begin
  $readmemb("memory.list",memoria1);
end

 endmodule
