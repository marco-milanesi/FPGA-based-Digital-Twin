//////////////////////////////////////////////////////////////////////////////////
// Engineer: 		 EDGAR RODRIGO MANCIPE TOLOZA
// University: 	 UPB
// Module Name:    encoder_cuadratura 
// Project Name: 	 ControlPID
// Target Devices: DE0-Nano
//////////////////////////////////////////////////////////////////////////////////
module rotary_decoder(clk, cuadA, cuadB, borrar, grados, cont);

input clk, cuadA, cuadB, borrar;
output [8:0] grados;
output reg [16:0] cont=17'd0; 
										
//output of the FFD      
reg [2:0] cuadA_retardada, cuadB_retardada;

//Circuit for encoder 
always @(posedge clk) cuadA_retardada <= {cuadA_retardada[1:0], cuadA};//3 ffD
always @(posedge clk) cuadB_retardada <= {cuadB_retardada[1:0], cuadB};//3 ffD

//XOR logic 
wire habilitador_conteo = (cuadA_retardada[1] ^ cuadA_retardada[2] 
								   ^ cuadB_retardada[1] ^ cuadB_retardada[2]);
									
wire direccion_conteo = cuadA_retardada[1] ^ cuadB_retardada[2];

//rotation of encoder 
always @(posedge clk)
begin
if (borrar==1'b1) cont<=17'b0;//reset the counter
  if(habilitador_conteo)// count enable signal
	begin
		if(direccion_conteo) 
			cont<=cont+1;  
		else 
			cont<=cont-1;	  
	end
	
 if (cont>17'd1000)
    cont<=17'd0; 
 if (cont==17'd131071)
     cont<=17'd1000; 
end
assign grados[8:0]=((cont[16:0])*360)/1000;
endmodule

//480 is considering the motoreduction gear box ratio for this motor. modify for others