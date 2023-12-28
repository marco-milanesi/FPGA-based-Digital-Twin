`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jairo Viola
// 
// Create Date: 11/29/2022 05:11:05 PM
// Design Name: PID control for Lam Systems based on a state machine
// Module Name: topModule
// Project Name: PID control testbench for HDL generation
// Target Devices: Xilinx Arty S7
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//FPGA clock is 12MHZ
//preescalers are working at 6Mhz for calculation of timing

module topModule(
        input clk, A, B, clearEncoder, //12Mhz clock
        
        // ADC Input
        input vp_in,
        input vn_in,
        input vauxp0,
        input vauxn0,
        input vauxp1,
        input vauxn1,
        input vauxp2,
        input vauxn2,
        input vauxp3,
        input vauxn3,
        input vauxp8,
        input vauxn8,
        input vauxp9,
        input vauxn9,
        input vauxp10,
        input vauxn10,
        input vauxp11,
        input vauxn11,
        input [2:0]SPSW,
        
        output PWMOut,            //PWM output
               DIR, out,              //PWM turning sense 
               TxD, TxD2, TxD3, TxD4,          //Serial port transmitter (control/encoder)
               [5:0] LED          // ADC Output leds
    );
    
    //wires definition
    //wire muestra[15:0];
    wire PWMModulation;
    wire KEY[1:0];
    wire [15:0]controlOut;
    integer speed1=16'd32500;
    integer speed2=16'd2500;
    reg [16:0] e_k_signo;
    
    ////////serial transmitter RS232 Only///////////////////
    wire TxD_start;
    wire BaudTick;
    wire TxD_busy;
    
    wire TxD_startEncoder;
    wire BaudTickEncoder;
    wire TxD_busyEncoder;
    
    wire TxD_startADC;
    wire BaudTickADC;
    wire TxD_busyADC;
    
    wire TxD_startError;
    wire BaudTickError;
    wire TxD_busyError;
    
    ///encoder wires
    wire [16:0] grad;
    wire [16:0] feedback;
    wire [16:0] feedback1;
    reg [16:0] feedback2;
    reg [15:0]PWMSpeed;
    
    //timer instances
       
     //Closed loop control sampling time 20khz
     wire clk_mk;
     divisor_freq reloj_20khz(.clk(clk), .freq_base(32'd300), .freq_sal(clk_mk));//aprox20k
     //divisor_freq reloj_20khz(.clk(clk), .freq_base(32'd6000), .freq_sal(clk_mk));//aprox1k
    
    //100khz clock for 8 bit PWM
     wire clk_100k;
     //divisor_freq reloj_100k(.clk(clk), .freq_base(32'd60), .freq_sal(clk_100k));
    divisor_freq reloj_100k(.clk(clk), .freq_base(32'd10), .freq_sal(clk_100k));
    //Baud Generator initialization
    divisor_freq gen_baud(.clk(clk), .freq_base(32'd104), .freq_sal(BaudTick));//fb=109-1 ... baud=55555
    //clock to initialize Tx 
    divisor_freq clk_TxDstart(.clk(clk), .freq_base(32'd35000), .freq_sal(TxD_start)); //fb=124999=200Hz

    //Baud Generator initialization Encoder
    divisor_freq gen_baudEncoder(.clk(clk), .freq_base(32'd104), .freq_sal(BaudTickEncoder));//fb=109-1 ... baud=55555
    //clock to initialize Tx 
    divisor_freq clk_TxDstartEncoder(.clk(clk), .freq_base(32'd35000), .freq_sal(TxD_startEncoder)); //fb=124999=200Hz
    
    //Baud Generator initialization Encoder
    divisor_freq gen_baudError(.clk(clk), .freq_base(32'd104), .freq_sal(BaudTickError));//fb=109-1 ... baud=55555
    //clock to initialize Tx 
    divisor_freq clk_TxDstartError(.clk(clk), .freq_base(32'd35000), .freq_sal(TxD_startError)); //fb=124999=200Hz

// ------------------------------- XDC implementation starts --------------------------------

    wire [15:0] data_out_adc_top;
    
        XADCdemo u1 (
       .CLK100MHZ(clk),
       .vp_in(vp_in),
       .vn_in(vn_in),
       .vauxp0(vauxp0),
       .vauxn0(vauxn0),
       .vauxp1(vauxp1),
       .vauxn1(vauxn1),
       .vauxp2(vauxp2),
       .vauxn2(vauxn2),
       .vauxp3(vauxp3),
       .vauxn3(vauxn3),
       .vauxp8(vauxp8),
       .vauxn8(vauxn8),
       .vauxp9(vauxp9),
       .vauxn9(vauxn9),
       .vauxp10(vauxp10),
       .vauxn10(vauxn10),
       .vauxp11(vauxp11),
       .vauxn11(vauxn11),
       .LED(LED),
       .data_out_adc(data_out_adc_top)
    );
    
    reg [9:0] data_out_adc_reg;
    
    always @(posedge clk) begin
       data_out_adc_reg <= data_out_adc_top/10;
    end

// ------------------------------- XDC implementation stops --------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
    //TX UART Instance for ADC
     reg [15:0] contADC=16'd0; 
     //reg [9:0]  outDataADC;
     transmisor_async adcTx(.BaudTick(BaudTickADC), .TxD_start(TxD_startADC), .TxD_data(data_out_adc_reg),.TxD(TxD4), .TxD_busy(TxD_busyADC));     
   
    //ROM to translate into ASCII characters for ADC signal
    reg [10:0] numberADC=16'd0; 
    wire [9:0] uniADC, decADC, centADC;
    ROM_grados_numericos   ROM_adc(.grad(numberADC), .unidades(uniADC), .decenas(decADC),.centenas(centADC)); //outputs are registers
    //send each data by serial1 by dividing the number in characters ()
//    wire freqSendADC;
//    divisor_freq sendUartADC(.clk(clk), .freq_base(32'd35000), .freq_sal(freqSendADC));//fb=109-1 ... baud=55555
    
//         always @(posedge freqSendADC)
//             begin 
//               case(contADC)
//                 16'b0000_0000_0000_0000: begin data_out_adc_reg<=centADC; contADC<=contADC+16'b0000_0000_0000_0001;end		
//                 16'b0000_0000_0000_0001: begin data_out_adc_reg<=decADC; contADC<=contADC+16'b0000_0000_0000_0001;end
//                 16'b0000_0000_0000_0010: begin data_out_adc_reg<=uniADC; contADC<=contADC+16'b0000_0000_0000_0001;end
//                 16'b0000_0000_0000_0011: begin data_out_adc_reg<=16'b0000_0000_0000_1010;  contADC<=16'b0000_0000_0000_0000;end
//                 default:    contADC<=1'b0;// outData<=16'b0000_0000_0000_0000;	
//                endcase
//             end
    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
    //TX UART Instance for encoder
     reg [15:0] contEncoder=16'd0; 
     reg [9:0]  outDataEncoder;
     transmisor_async encoderTx(.BaudTick(BaudTickEncoder), .TxD_start(TxD_startEncoder), .TxD_data(outDataEncoder),.TxD(TxD2), .TxD_busy(TxD_busyEncoder));     
   
    //ROM to translate into ASCII characters for encoder signal
    reg [10:0] numberEncoder=16'd0; 
    wire [9:0] uniE, decE, centE;
    ROM_grados_numericos   ROM_de_grados(.grad(numberEncoder), .unidades(uniE), .decenas(decE),.centenas(centE)); //outputs are registers
    //send each data by serial1 by dividing the number in characters ()
    wire freqSendEncoder;
    divisor_freq sendUart(.clk(clk), .freq_base(32'd35000), .freq_sal(freqSendEncoder));//fb=109-1 ... baud=55555
    
         always @(posedge freqSendEncoder)
             begin 
               case(contEncoder)
                 16'b0000_0000_0000_0000: begin outDataEncoder<=centE; contEncoder<=contEncoder+16'b0000_0000_0000_0001;end		
                 16'b0000_0000_0000_0001: begin outDataEncoder<=decE; contEncoder<=contEncoder+16'b0000_0000_0000_0001;end
                 16'b0000_0000_0000_0010: begin outDataEncoder<=uniE; contEncoder<=contEncoder+16'b0000_0000_0000_0001;end
                 16'b0000_0000_0000_0011: begin outDataEncoder<=16'b0000_0000_0000_1010;  contEncoder<=16'b0000_0000_0000_0000;end
                 default:    contEncoder<=1'b0;// outData<=16'b0000_0000_0000_0000;	
                endcase
             end
    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
    //TX UART Instance for control action 
    reg [15:0] contControl=16'd0; 
    reg [9:0] outDataControl;
    transmisor_async controlTx(.BaudTick(BaudTick), .TxD_start(TxD_start), .TxD_data(outDataControl),.TxD(TxD), .TxD_busy(TxD_busy));
   
    //ROM to translate into ASCII characters for control action 
    reg [10:0]numberControl=10'd0312;
    wire [9:0] uniC, decC, centC;
    ROM_grados_numericos   ROM_control(.grad(numberControl), .unidades(uniC), .decenas(decC),.centenas(centC)); //outputs are registers
    //send each data by serialControl by dividing the number in characters ()
    wire freqSendControl;
    divisor_freq sendUart1(.clk(clk), .freq_base(32'd35000), .freq_sal(freqSendControl));//fb=109-1 ... baud=55555
    
         always @(posedge freqSendControl)
             begin 
               case(contControl)
                 16'b0000_0000_0000_0000: begin outDataControl<=centC; contControl<=contControl+16'b0000_0000_0000_0001;end		
                 16'b0000_0000_0000_0001: begin outDataControl<=decC; contControl<=contControl+16'b0000_0000_0000_0001;end
                 16'b0000_0000_0000_0010: begin outDataControl<=uniC; contControl<=contControl+16'b0000_0000_0000_0001;end
                 16'b0000_0000_0000_0011: begin outDataControl<=16'b0000_0000_0000_1010;  contControl<=16'b0000_0000_0000_0000;end
                 default:    outDataControl<=1'b0;// outData<=16'b0000_0000_0000_0000;	
                endcase
             end

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
    
    
//     //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
//        //TX UART Instance for error signal 
//        reg [15:0] contError=16'd0; 
//        reg [9:0] outDataError;
//        transmisor_async errorTx(.BaudTick(BaudTickError), .TxD_start(TxD_startError), .TxD_data(outDataError),.TxD(TxD3), .TxD_busy(TxD_busyError));
       
//        //ROM to translate into ASCII characters for control action 
//        reg [10:0]numberError=10'd0312;
//        wire [9:0] uniErr, decErr, centErr;
//        ROM_grados_numericos   ROM_error(.grad(numberError), .unidades(uniErr), .decenas(decErr), 
//                                                      .centenas(centErr)); //outputs are registers
//        //send each data by serialControl by dividing the number in characters ()
//        wire freqSendError;
//        divisor_freq sendUartE(.clk(clk), .freq_base(32'd35000), .freq_sal(freqSendError));//fb=109-1 ... baud=55555
        
//             always @(posedge freqSendError)
//                 begin 
//                   case(contError)
//                     16'b0000_0000_0000_0000: begin outDataError<=centErr; contError<=contError+16'b0000_0000_0000_0001;end		
//                     16'b0000_0000_0000_0001: begin outDataError<=decErr; contError<=contError+16'b0000_0000_0000_0001;end
//                     16'b0000_0000_0000_0010: begin outDataError<=uniErr; contError<=contError+16'b0000_0000_0000_0001;end
//                     16'b0000_0000_0000_0011: begin outDataError<=16'b0000_0000_0000_1010;  contError<=16'b0000_0000_0000_0000;end
//                     default:    outDataError<=1'b0;// outData<=16'b0000_0000_0000_0000;	
//                    endcase
//                 end
    
//        //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
        //TX UART Instance for send all the signals  
        reg [15:0] contError=16'd0; 
        reg [9:0] outDataError;
        transmisor_async errorTx(.BaudTick(BaudTickError), .TxD_start(TxD_startError), .TxD_data(outDataError),.TxD(TxD3), .TxD_busy(TxD_busyError));
       
        //ROM to translate into ASCII characters for control action 
        reg [10:0]numberError=10'd0312;
        reg [10:0]numberMV=10'd0312;
        reg [10:0]numberMVDT=10'd0312;
        
        wire [9:0] uniErr, decErr, centErr;
        ROM_grados_numericos   ROM_error(.grad(numberError), .unidades(uniErr), .decenas(decErr),.centenas(centErr)); //outputs are registers
                                                      
                                                      
        wire [9:0] uniMV, decMV, centMV;
        ROM_grados_numericos   ROM_MV(.grad(numberMV), .unidades(uniMV), .decenas(decMV),.centenas(centMV)); //outputs are registers                                              
       
       wire [9:0] uniMVDT, decMVDT, centMVDT;
        ROM_grados_numericos   ROM_MVDT(.grad(numberMVDT), .unidades(uniMVDT), .decenas(decMVDT),.centenas(centMVDT)); //outputs are registers   
 
                                              
                                                      
        //send each data by serialControl by dividing the number in characters ()
        wire freqSendError;
        divisor_freq sendUartE(.clk(clk), .freq_base(32'd35000), .freq_sal(freqSendError));//fb=109-1 ... baud=55555
        
             always @(posedge freqSendError)
                 begin 
                   case(contError)
                     16'b0000_0000_0000_0000: begin outDataError<=centErr; contError<=contError+16'b0000_0000_0000_0001;end		
                     16'b0000_0000_0000_0001: begin outDataError<=decErr; contError<=contError+16'b0000_0000_0000_0001;end
                     16'b0000_0000_0000_0010: begin outDataError<=uniErr; contError<=contError+16'b0000_0000_0000_0001;end
                     16'b0000_0000_0000_0011: begin outDataError<=16'b0000_0000_0010_0000;  contError<=contError+16'b0000_0000_0000_0001;end  //space plus one counter
                    
                    16'b0000_0000_0000_0100: begin outDataError<=centC; contError<=contError+16'b0000_0000_0000_0001;end	
                    16'b0000_0000_0000_0101: begin outDataError<=decC; contError<=contError+16'b0000_0000_0000_0001;end
                    16'b0000_0000_0000_0110: begin outDataError<=uniC; contError<=contError+16'b0000_0000_0000_0001;end   
                    16'b0000_0000_0000_0111: begin outDataError<=16'b0000_0000_0010_0000;  contError<=contError+16'b0000_0000_0000_0001;end //space plus one counter
                    
                    16'b0000_0000_0000_1000: begin outDataError<=centE; contError<=contError+16'b0000_0000_0000_0001;end		
                    16'b0000_0000_0000_1001: begin outDataError<=decE; contError<=contError+16'b0000_0000_0000_0001;end
                    16'b0000_0000_0000_1010: begin outDataError<=uniE; contError<=contError+16'b0000_0000_0000_0001;end
                    16'b0000_0000_0000_1011: begin outDataError<=16'b0000_0000_0010_0000;  contError<=contError+16'b0000_0000_0000_0001;end //space plus one counter
                    
                    16'b0000_0000_0000_1100: begin outDataError<=centMV; contError<=contError+16'b0000_0000_0000_0001;end		
                    16'b0000_0000_0000_1101: begin outDataError<=decMV; contError<=contError+16'b0000_0000_0000_0001;end
                    16'b0000_0000_0000_1110: begin outDataError<=uniMV; contError<=contError+16'b0000_0000_0000_0001;end
                    16'b0000_0000_0000_1111: begin outDataError<=16'b0000_0000_0010_0000;  contError<=contError+16'b0000_0000_0000_0001;end //space plus one counter
                    
                    16'b0000_0000_0001_0000: begin outDataError<=centMVDT; contError<=contError+16'b0000_0000_0000_0001;end		
                    16'b0000_0000_0001_0001: begin outDataError<=decMVDT; contError<=contError+16'b0000_0000_0000_0001;end
                    16'b0000_0000_0001_0010: begin outDataError<=uniMVDT; contError<=contError+16'b0000_0000_0000_0001;end                    
                    16'b0000_0000_0001_0011: begin outDataError<=16'b0000_0000_0010_0000;  contError<=contError+16'b0000_0000_0000_0001;end //space plus one counter
                    
                    16'b0000_0000_0001_0100: begin outDataError<=centADC; contError<=contError+16'b0000_0000_0000_0001;end		
                    16'b0000_0000_0001_0101: begin outDataError<=decADC; contError<=contError+16'b0000_0000_0000_0001;end
                    16'b0000_0000_0001_0110: begin outDataError<=uniADC; contError<=contError+16'b0000_0000_0000_0001;end                    
                    16'b0000_0000_0001_0111: begin outDataError<=16'b0000_0000_0000_1010;  contError<=16'b0000_0000_0000_0000;end  //LF plus restart counter
                                       
                    default:    outDataError<=1'b0;// outData<=16'b0000_0000_0000_0000;	
                    endcase
                 end
    
        //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++     




  //change the speed of the motor based on the switch selector
//    always @(posedge clk)
//    begin
//        case(speed)
//            1'b0:     PWMSpeed<=16'd0000;		
//            1'b1:     PWMSpeed<=16'd32500; 	
//            default:  PWMSpeed<=16'd0000;	
//        endcase
//    end
   
    //Setpoint selection in degrees
    reg [16:0]set_point;
    always @(posedge clk)
    begin
        case(SPSW)
            3'b000:     set_point<=16'd90;		
            3'b001:     set_point<=16'd90; 	
            3'b010:     set_point<=16'd135;		
            3'b011:     set_point<=16'd180; 
            3'b100:     set_point<=16'd225;		
            3'b101:     set_point<=16'd270; 
            3'b110:     set_point<=16'd315;		
            3'b111:     set_point<=16'd320; 
            default:  set_point<=16'd0000;	
        endcase
    end
   
   
   reg [16:0] contSpeed;
   reg [16:0] contSpeedAux;
  //1s speed measurement clock
    wire speedClk;
    divisor_freq speedClkTime(.clk(clk), .freq_base(32'd600000), .freq_sal(speedClk));//fb=109-1 ... baud=55555
    
    //Read Motor Encoder and send value via serial port 
//    rotary_decoder indicador_grados(.clk(clk), .cuadA(A), .cuadB(B), .borrar(clearEncoder), 
//											.grados(grad), .cont(feedback), .contSpeed(contSpeed), .clkSpeed(speedClk));
    rotary_decoder indicador_grados(.clk(clk), .cuadA(A), .cuadB(B), .borrar(clearEncoder), 
											.grados(grad), .cont(feedback));
  
    
//    //count number 
//    always @(posedge A)
//    begin
//         contSpeedAux=contSpeedAux+1'd1;
//    end
    
//    always @ (posedge speedClk)
//    begin
//        contSpeed=contSpeedAux;
//        contSpeedAux=0;
//    end 
    
 
    
    //PID error calculation
    //////error////
    always @(posedge clk)
	   e_k_signo<=(set_point - grad); // e(k)=R(s)-Y(s)

    ////error abs////	
    reg [16:0] e_k_unsigned;
    always @(posedge clk)	
	   if (e_k_signo[16]==1'b1)  //en caso de que el error sea negativo
		  e_k_unsigned<=((~e_k_signo)+(1'b1)); //bit de signo
	   else
		  e_k_unsigned<=(e_k_signo);
    
    
    //PID controller instance
    
//    //proportional controller
//    reg [16:0]KP=32'd2;         //proportional gain  3 works
//    reg [16:0]KI=32'd1;			//integral gain
//    //reg [16:0] controlOut;
//    reg [16:0] controlOut_unsigned;
    
    //proportional control (EASY): control action computed using a positive error always
//    always@ (posedge clk_mk)
//        begin
//            controlOut_unsigned<= 16'd150+( e_k_unsigned/(KP));
//        end

////evaluating the turning sense assuming that control action is always positive
//    reg [2:0]giro=2'd0;
//    always @(posedge clk_mk)	
//	   begin
//	   if (e_k_signo[16]==1'b1)  //en caso de que el error sea negativo
//		  begin
//		  giro=2'd0;
		  
//		  end
//	   else
//		  begin
//		  giro=2'd1;
//		  end
//        end   



     //PI Controller
      reg [31:0]KP=32'd1;         //proportional gain  3 works
      reg [31:0]KI=32'd1;			//integral gain
      reg [16:0] controlOut_unsigned;
      wire [15:0] sample;   
//     controlador controlador_PID(.clk_mk(clk_mk),.CLOCK_50(clk),.error(e_k_unsigned[16:0]),
//								 .m_k_out(sample[15:0]), .reset(1'b0));
//    //assign control action to the output variable
//    always@(posedge clk)
//        controlOut_unsigned=sample+8'd00;
        
    //bypass PI controller to do open-loop test
        always@(posedge clk)
        controlOut_unsigned=set_point;
        
        
//        controlOut_unsigned=8'd150;
    
//    reg giro=1'b0;
//    always@(posedge clk)
//        giro=SPSW[0];

// ------------------------------ DT implementation starts ----------------------------------
  wire  signed [16:0] PV;  // sfix64_En32
  wire  signed [16:0] MV;  // sfix64_En32
  wire  signed [16:0] i_action;  // sfix64_En32
  wire  signed [16:0] p_action;  // sfix64_En32
  wire  signed [16:0] error;  // sfix64_En32
  wire  signed ce_out;  // sfix64_En32
    
    DT DT_inst(
      .clk(clk),
      .reset_x(1'b0),
      .SP(set_point[16:0]),
      .kp(32'd4),
      .ti(32'd2),
      .PV(PV[16:0]),  //process variable     (position)
      .MV(MV[16:0]),  //manipulated variable (control action)
      .p_action(p_action[16:0]),
      .error(error[16:0]),
      .i_action(i_action[16:0])
    );
    
  
    reg [10:0]PV_Print;
    reg [10:0]MV_Print;
//assign control action to the output variable
    always@(posedge clk)
        PV_Print=PV;
    always@(posedge clk)
        MV_Print=MV;
 // ------------------------------ DT implementation stops ----------------------------------
        
        
    //evaluating the turning sense assuming that control action is always positive
    reg [2:0]giro=2'd0;
    always @(posedge clk_mk)	
	   begin
	   if (e_k_signo[16]==1'b1)  //if the error is negative
		  begin
		  giro=2'd0;
		  
		  end
	   else
		  begin
		  giro=2'd1;
		  end
        end   
        
        
         //check if turning sense is working
         assign out=giro;
        
    
    //Initialize PWM Generator (clk is 6mhz in this FPGA) 183Hz PWM 
    // pwm pwm(.clk(clk), .pwm_in(controlOut), .pwm_out(PWMModulation));
     pwm8bits pwm8(.clk100k(clk_100k), .pwm_in(controlOut_unsigned), .pwm_out(PWMModulation)); //PWM operating with 8 bits resolution 
    
    //PWM outputs assignment
    assign PWMOut=PWMModulation;
    //assign DIR=giro;                      //turning direction using PID controller
     assign DIR=1'b0;                      //manual turning sense for System identification
    //error computation DT-Physical Asset
    reg [16:0] DTRealError;
    reg [16:0] physicalAsset;
  
    always @(posedge clk)
        
        DTRealError<=(PV_Print-grad);
        
//     always @(posedge clk)
//	   e_k_signo<=(set_point - grad); // e(k)=R(s)-Y(s)   
        

    //modify the error lecture at the same rate as the UART sending speed (200hz)
    //for printing purposes only, the control keeps working faster

//    always @(posedge freqSendControl)
//   // numberControl=controlOut_unsigned;
//     numberControl=DTRealError;
     
    always @(posedge freqSendEncoder)
    //numberEncoder=grad;
     numberEncoder=PV_Print;
    
    always @(posedge freqSendError)
    begin
        numberError=grad;
        numberMV=controlOut_unsigned;
        numberADC=data_out_adc_reg;
        numberMVDT=contSpeed;
    end
    // numberError=compOut; 
     
endmodule
