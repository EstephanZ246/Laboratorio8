// se declaran las entradas y salidas
module Contador (
clk,
enable,
rst,
load,
datos,
salidas
);
// se coloca si son entradas o salidas las variable que declaramos antes.
input clk;
input rst;
input enable;
input load;
input [11:0] datos;
output [11:0] salidas;

wire clk;
wire rst;
wire enable;
wire load;
wire [11:0] datos;

reg [11:0]   salidas;
// se coloca un always para que siempre que estemos en un valor no 0 realice las acciones

always @(posedge clk or posedge rst)
// se colocan los diferentes casos que tenemos en nuetro contadorr/
// siendo estas para contar, no contar, reiniciar contador, y precargar un valor
begin: contadorr

if (rst)begin

salidas <= 000000000000;

end

else if (enable)begin

salidas<= salidas + 1;

end

else if (load)begin

salidas <= datos;

end
end //contadorr





endmodule
