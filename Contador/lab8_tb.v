module testbench();

reg clk, reset, enable, load;
reg [11:0] datos;
wire [11:0]  salidas;

Contador c1(clk, enable, reset, load, datos, salidas);

    initial begin
    #10 $display(" ");
    $display(" ");
    $display(" Contador de 12 bits");
    $display("clk enable load reset salidas");
    $display("_______________________________");
    $monitor(" %b    %b    %b   %b    %b  ", clk, enable, load, reset, salidas);
    end

  always// clock
  #5 clk = ~clk;
  initial begin
  // valor inicial
   datos =  12'b011011000110;//198

  #10 clk=0;
  #10 reset =0;
  #10 load =0;


  /*
  Caso en el que cargamos precargamos
  los datos y contamos a partir de ese dato ingresado
  */
  $display("Pre-cargar valor y contar a partir de ahí");

  datos =  12'b011011000110;//198
  #10  load = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 reset = 1;
  #10 reset=0;
  #10 load = 0;
   /// empezar a contar
   $display("Empezar a contar");
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
   #10 enable = 1;
    #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
     #10 enable = 1;
      #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;
       #10 enable = 1;

  ////// Resetear los datos y no contar
     $display("Resetear los datos y no contar");
  #10 reset = 1;
  #10 reset = 0;
  #10 enable = 0;
  #10 reset = 1;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;
  #10 enable = 0;

  // Volver a iniciar contadorr
     $display("Inciar contador");
    #10 reset = 0;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;
  #10 enable = 1;




   $finish;

  end


/// GTK wave
  initial begin
   $dumpfile("lab8_tb.vcd");
   $dumpvars(0,testbench);
 end
endmodule
