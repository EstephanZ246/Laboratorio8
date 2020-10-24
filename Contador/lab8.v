module Contador (
clk,
enable,
rst,
load,
datos,
salidas
);

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

always @(posedge clk or posedge rst)

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
