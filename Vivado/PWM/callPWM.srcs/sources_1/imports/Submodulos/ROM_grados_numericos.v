//////////////////////////////////////////////////////////////////////////////////
// Engineer: 		 EDGAR RODRIGO MANCIPE TOLOZA
// University: 	 UPB
// Module Name:    ROM_grados_numericos 
// Project Name: 	 ControlPID
// Target Devices: DE0-Nano
//////////////////////////////////////////////////////////////////////////////////
module ROM_grados_numericos(grad, unidades, decenas, centenas);

input [8:0] grad;
output reg [9:0] unidades, decenas, centenas;

parameter numero_cero={2'b10,8'h30};// 2 bits para instruccion, 8 bits para ascii
parameter numero_uno={2'b10,8'h31};
parameter numero_dos={2'b10,8'h32};
parameter numero_tres={2'b10,8'h33};
parameter numero_cuatro={2'b10,8'h34};
parameter numero_cinco={2'b10,8'h35};
parameter numero_seis={2'b10,8'h36};
parameter numero_siete={2'b10,8'h37};
parameter numero_ocho={2'b10,8'h38};
parameter numero_nueve={2'b10,8'h39};

///rom para unidades
always @*
	case (grad)
		9'd0: unidades=numero_cero;
		9'd1: unidades=numero_uno;
		9'd2: unidades=numero_dos;
		9'd3: unidades=numero_tres;
		9'd4: unidades=numero_cuatro;
		9'd5: unidades=numero_cinco;
		9'd6: unidades=numero_seis;
		9'd7: unidades=numero_siete;
		9'd8: unidades=numero_ocho;
		9'd9: unidades=numero_nueve;
		
		9'd10: unidades=numero_cero;
		9'd11: unidades=numero_uno;
		9'd12: unidades=numero_dos;
		9'd13: unidades=numero_tres;
		9'd14: unidades=numero_cuatro;
		9'd15: unidades=numero_cinco;
		9'd16: unidades=numero_seis;
		9'd17: unidades=numero_siete;
		9'd18: unidades=numero_ocho;
		9'd19: unidades=numero_nueve;
		
		9'd20: unidades=numero_cero;
		9'd21: unidades=numero_uno;
		9'd22: unidades=numero_dos;
		9'd23: unidades=numero_tres;
		9'd24: unidades=numero_cuatro;
		9'd25: unidades=numero_cinco;
		9'd26: unidades=numero_seis;
		9'd27: unidades=numero_siete;
		9'd28: unidades=numero_ocho;
		9'd29: unidades=numero_nueve;
		
		9'd30: unidades=numero_cero;
		9'd31: unidades=numero_uno;
		9'd32: unidades=numero_dos;
		9'd33: unidades=numero_tres;
		9'd34: unidades=numero_cuatro;
		9'd35: unidades=numero_cinco;
		9'd36: unidades=numero_seis;
		9'd37: unidades=numero_siete;
		9'd38: unidades=numero_ocho;
		9'd39: unidades=numero_nueve;
		
		9'd40: unidades=numero_cero;
		9'd41: unidades=numero_uno;
		9'd42: unidades=numero_dos;
		9'd43: unidades=numero_tres;
		9'd44: unidades=numero_cuatro;
		9'd45: unidades=numero_cinco;
		9'd46: unidades=numero_seis;
		9'd47: unidades=numero_siete;
		9'd48: unidades=numero_ocho;
		9'd49: unidades=numero_nueve;
		
		9'd50: unidades=numero_cero;
		9'd51: unidades=numero_uno;
		9'd52: unidades=numero_dos;
		9'd53: unidades=numero_tres;
		9'd54: unidades=numero_cuatro;
		9'd55: unidades=numero_cinco;
		9'd56: unidades=numero_seis;
		9'd57: unidades=numero_siete;
		9'd58: unidades=numero_ocho;
		9'd59: unidades=numero_nueve;
		
		9'd60: unidades=numero_cero;
		9'd61: unidades=numero_uno;
		9'd62: unidades=numero_dos;
		9'd63: unidades=numero_tres;
		9'd64: unidades=numero_cuatro;
		9'd65: unidades=numero_cinco;
		9'd66: unidades=numero_seis;
		9'd67: unidades=numero_siete;
		9'd68: unidades=numero_ocho;
		9'd69: unidades=numero_nueve;
		
		9'd70: unidades=numero_cero;
		9'd71: unidades=numero_uno;
		9'd72: unidades=numero_dos;
		9'd73: unidades=numero_tres;
		9'd74: unidades=numero_cuatro;
		9'd75: unidades=numero_cinco;
		9'd76: unidades=numero_seis;
		9'd77: unidades=numero_siete;
		9'd78: unidades=numero_ocho;
		9'd79: unidades=numero_nueve;
		
		9'd80: unidades=numero_cero;
		9'd81: unidades=numero_uno;
		9'd82: unidades=numero_dos;
		9'd83: unidades=numero_tres;
		9'd84: unidades=numero_cuatro;
		9'd85: unidades=numero_cinco;
		9'd86: unidades=numero_seis;
		9'd87: unidades=numero_siete;
		9'd88: unidades=numero_ocho;
		9'd89: unidades=numero_nueve;
		
		9'd90: unidades=numero_cero;
		9'd91: unidades=numero_uno;
		9'd92: unidades=numero_dos;
		9'd93: unidades=numero_tres;
		9'd94: unidades=numero_cuatro;
		9'd95: unidades=numero_cinco;
		9'd96: unidades=numero_seis;
		9'd97: unidades=numero_siete;
		9'd98: unidades=numero_ocho;
		9'd99: unidades=numero_nueve;
		
		9'd100: unidades=numero_cero;
		9'd101: unidades=numero_uno;
		9'd102: unidades=numero_dos;
		9'd103: unidades=numero_tres;
		9'd104: unidades=numero_cuatro;
		9'd105: unidades=numero_cinco;
		9'd106: unidades=numero_seis;
		9'd107: unidades=numero_siete;
		9'd108: unidades=numero_ocho;
		9'd109: unidades=numero_nueve;
		
		9'd110: unidades=numero_cero;
		9'd111: unidades=numero_uno;
		9'd112: unidades=numero_dos;
		9'd113: unidades=numero_tres;
		9'd114: unidades=numero_cuatro;
		9'd115: unidades=numero_cinco;
		9'd116: unidades=numero_seis;
		9'd117: unidades=numero_siete;
		9'd118: unidades=numero_ocho;
		9'd119: unidades=numero_nueve;
		
		9'd120: unidades=numero_cero;
		9'd121: unidades=numero_uno;
		9'd122: unidades=numero_dos;
		9'd123: unidades=numero_tres;
		9'd124: unidades=numero_cuatro;
		9'd125: unidades=numero_cinco;
		9'd126: unidades=numero_seis;
		9'd127: unidades=numero_siete;
		9'd128: unidades=numero_ocho;
		9'd129: unidades=numero_nueve;
		
		
		9'd130: unidades=numero_cero;
		9'd131: unidades=numero_uno;
		9'd132: unidades=numero_dos;
		9'd133: unidades=numero_tres;
		9'd134: unidades=numero_cuatro;
		9'd135: unidades=numero_cinco;
		9'd136: unidades=numero_seis;
		9'd137: unidades=numero_siete;
		9'd138: unidades=numero_ocho;
		9'd139: unidades=numero_nueve;
		
		9'd140: unidades=numero_cero;
		9'd141: unidades=numero_uno;
		9'd142: unidades=numero_dos;
		9'd143: unidades=numero_tres;
		9'd144: unidades=numero_cuatro;
		9'd145: unidades=numero_cinco;
		9'd146: unidades=numero_seis;
		9'd147: unidades=numero_siete;
		9'd148: unidades=numero_ocho;
		9'd149: unidades=numero_nueve;
		
		9'd150: unidades=numero_cero;
		9'd151: unidades=numero_uno;
		9'd152: unidades=numero_dos;
		9'd153: unidades=numero_tres;
		9'd154: unidades=numero_cuatro;
		9'd155: unidades=numero_cinco;
		9'd156: unidades=numero_seis;
		9'd157: unidades=numero_siete;
		9'd158: unidades=numero_ocho;
		9'd159: unidades=numero_nueve;
		
		
		9'd160: unidades=numero_cero;
		9'd161: unidades=numero_uno;
		9'd162: unidades=numero_dos;
		9'd163: unidades=numero_tres;
		9'd164: unidades=numero_cuatro;
		9'd165: unidades=numero_cinco;
		9'd166: unidades=numero_seis;
		9'd167: unidades=numero_siete;
		9'd168: unidades=numero_ocho;
		9'd169: unidades=numero_nueve;
		
		9'd170: unidades=numero_cero;
		9'd171: unidades=numero_uno;
		9'd172: unidades=numero_dos;
		9'd173: unidades=numero_tres;
		9'd174: unidades=numero_cuatro;
		9'd175: unidades=numero_cinco;
		9'd176: unidades=numero_seis;
		9'd177: unidades=numero_siete;
		9'd178: unidades=numero_ocho;
		9'd179: unidades=numero_nueve;
		
		9'd180: unidades=numero_cero;
		9'd181: unidades=numero_uno;
		9'd182: unidades=numero_dos;
		9'd183: unidades=numero_tres;
		9'd184: unidades=numero_cuatro;
		9'd185: unidades=numero_cinco;
		9'd186: unidades=numero_seis;
		9'd187: unidades=numero_siete;
		9'd188: unidades=numero_ocho;
		9'd189: unidades=numero_nueve;
		
		9'd190: unidades=numero_cero;
		9'd191: unidades=numero_uno;
		9'd192: unidades=numero_dos;
		9'd193: unidades=numero_tres;
		9'd194: unidades=numero_cuatro;
		9'd195: unidades=numero_cinco;
		9'd196: unidades=numero_seis;
		9'd197: unidades=numero_siete;
		9'd198: unidades=numero_ocho;
		9'd199: unidades=numero_nueve;
		
		9'd200: unidades=numero_cero;
		9'd201: unidades=numero_uno;
		9'd202: unidades=numero_dos;
		9'd203: unidades=numero_tres;
		9'd204: unidades=numero_cuatro;
		9'd205: unidades=numero_cinco;
		9'd206: unidades=numero_seis;
		9'd207: unidades=numero_siete;
		9'd208: unidades=numero_ocho;
		9'd209: unidades=numero_nueve;
		
		9'd210: unidades=numero_cero;
		9'd211: unidades=numero_uno;
		9'd212: unidades=numero_dos;
		9'd213: unidades=numero_tres;
		9'd214: unidades=numero_cuatro;
		9'd215: unidades=numero_cinco;
		9'd216: unidades=numero_seis;
		9'd217: unidades=numero_siete;
		9'd218: unidades=numero_ocho;
		9'd219: unidades=numero_nueve;
		
		9'd220: unidades=numero_cero;
		9'd221: unidades=numero_uno;
		9'd222: unidades=numero_dos;
		9'd223: unidades=numero_tres;
		9'd224: unidades=numero_cuatro;
		9'd225: unidades=numero_cinco;
		9'd226: unidades=numero_seis;
		9'd227: unidades=numero_siete;
		9'd228: unidades=numero_ocho;
		9'd229: unidades=numero_nueve;
		
		9'd230: unidades=numero_cero;
		9'd231: unidades=numero_uno;
		9'd232: unidades=numero_dos;
		9'd233: unidades=numero_tres;
		9'd234: unidades=numero_cuatro;
		9'd235: unidades=numero_cinco;
		9'd236: unidades=numero_seis;
		9'd237: unidades=numero_siete;
		9'd238: unidades=numero_ocho;
		9'd239: unidades=numero_nueve;
		
		9'd240: unidades=numero_cero;
		9'd241: unidades=numero_uno;
		9'd242: unidades=numero_dos;
		9'd243: unidades=numero_tres;
		9'd244: unidades=numero_cuatro;
		9'd245: unidades=numero_cinco;
		9'd246: unidades=numero_seis;
		9'd247: unidades=numero_siete;
		9'd248: unidades=numero_ocho;
		9'd249: unidades=numero_nueve;
		
		9'd250: unidades=numero_cero;
		9'd251: unidades=numero_uno;
		9'd252: unidades=numero_dos;
		9'd253: unidades=numero_tres;
		9'd254: unidades=numero_cuatro;
		9'd255: unidades=numero_cinco;
		9'd256: unidades=numero_seis;
		9'd257: unidades=numero_siete;
		9'd258: unidades=numero_ocho;
		9'd259: unidades=numero_nueve;
		
		9'd260: unidades=numero_cero;
		9'd261: unidades=numero_uno;
		9'd262: unidades=numero_dos;
		9'd263: unidades=numero_tres;
		9'd264: unidades=numero_cuatro;
		9'd265: unidades=numero_cinco;
		9'd266: unidades=numero_seis;
		9'd267: unidades=numero_siete;
		9'd268: unidades=numero_ocho;
		9'd269: unidades=numero_nueve;
		
		9'd270: unidades=numero_cero;
		9'd271: unidades=numero_uno;
		9'd272: unidades=numero_dos;
		9'd273: unidades=numero_tres;
		9'd274: unidades=numero_cuatro;
		9'd275: unidades=numero_cinco;
		9'd276: unidades=numero_seis;
		9'd277: unidades=numero_siete;
		9'd278: unidades=numero_ocho;
		9'd279: unidades=numero_nueve;
		
		9'd280: unidades=numero_cero;
		9'd281: unidades=numero_uno;
		9'd282: unidades=numero_dos;
		9'd283: unidades=numero_tres;
		9'd284: unidades=numero_cuatro;
		9'd285: unidades=numero_cinco;
		9'd286: unidades=numero_seis;
		9'd287: unidades=numero_siete;
		9'd288: unidades=numero_ocho;
		9'd289: unidades=numero_nueve;
		
		9'd290: unidades=numero_cero;
		9'd291: unidades=numero_uno;
		9'd292: unidades=numero_dos;
		9'd293: unidades=numero_tres;
		9'd294: unidades=numero_cuatro;
		9'd295: unidades=numero_cinco;
		9'd296: unidades=numero_seis;
		9'd297: unidades=numero_siete;
		9'd298: unidades=numero_ocho;
		9'd299: unidades=numero_nueve;
		
		9'd300: unidades=numero_cero;
		9'd301: unidades=numero_uno;
		9'd302: unidades=numero_dos;
		9'd303: unidades=numero_tres;
		9'd304: unidades=numero_cuatro;
		9'd305: unidades=numero_cinco;
		9'd306: unidades=numero_seis;
		9'd307: unidades=numero_siete;
		9'd308: unidades=numero_ocho;
		9'd309: unidades=numero_nueve;
		
		9'd310: unidades=numero_cero;
		9'd311: unidades=numero_uno;
		9'd312: unidades=numero_dos;
		9'd313: unidades=numero_tres;
		9'd314: unidades=numero_cuatro;
		9'd315: unidades=numero_cinco;
		9'd316: unidades=numero_seis;
		9'd317: unidades=numero_siete;
		9'd318: unidades=numero_ocho;
		9'd319: unidades=numero_nueve;
		
		9'd320: unidades=numero_cero;
		9'd321: unidades=numero_uno;
		9'd322: unidades=numero_dos;
		9'd323: unidades=numero_tres;
		9'd324: unidades=numero_cuatro;
		9'd325: unidades=numero_cinco;
		9'd326: unidades=numero_seis;
		9'd327: unidades=numero_siete;
		9'd328: unidades=numero_ocho;
		9'd329: unidades=numero_nueve;
		
		9'd330: unidades=numero_cero;
		9'd331: unidades=numero_uno;
		9'd332: unidades=numero_dos;
		9'd333: unidades=numero_tres;
		9'd334: unidades=numero_cuatro;
		9'd335: unidades=numero_cinco;
		9'd336: unidades=numero_seis;
		9'd337: unidades=numero_siete;
		9'd338: unidades=numero_ocho;
		9'd339: unidades=numero_nueve;
		
		9'd340: unidades=numero_cero;
		9'd341: unidades=numero_uno;
		9'd342: unidades=numero_dos;
		9'd343: unidades=numero_tres;
		9'd344: unidades=numero_cuatro;
		9'd345: unidades=numero_cinco;
		9'd346: unidades=numero_seis;
		9'd347: unidades=numero_siete;
		9'd348: unidades=numero_ocho;
		9'd349: unidades=numero_nueve;
		
		9'd350: unidades=numero_cero;
		9'd351: unidades=numero_uno;
		9'd352: unidades=numero_dos;
		9'd353: unidades=numero_tres;
		9'd354: unidades=numero_cuatro;
		9'd355: unidades=numero_cinco;
		9'd356: unidades=numero_seis;
		9'd357: unidades=numero_siete;
		9'd358: unidades=numero_ocho;
		9'd359: unidades=numero_nueve;
	endcase

///rom para decenas
always @*
	case (grad)
		9'd0: decenas=numero_cero;
		9'd1: decenas=numero_cero;
		9'd2: decenas=numero_cero;
		9'd3: decenas=numero_cero;
		9'd4: decenas=numero_cero;
		9'd5: decenas=numero_cero;
		9'd6: decenas=numero_cero;
		9'd7: decenas=numero_cero;
		9'd8: decenas=numero_cero;
		9'd9: decenas=numero_cero;
		
		9'd10: decenas=numero_uno;
		9'd11: decenas=numero_uno;
		9'd12: decenas=numero_uno;
		9'd13: decenas=numero_uno;
		9'd14: decenas=numero_uno;
		9'd15: decenas=numero_uno;
		9'd16: decenas=numero_uno;
		9'd17: decenas=numero_uno;
		9'd18: decenas=numero_uno;
		9'd19: decenas=numero_uno;
		
		9'd20: decenas=numero_dos;
		9'd21: decenas=numero_dos;
		9'd22: decenas=numero_dos;
		9'd23: decenas=numero_dos;
		9'd24: decenas=numero_dos;
		9'd25: decenas=numero_dos;
		9'd26: decenas=numero_dos;
		9'd27: decenas=numero_dos;
		9'd28: decenas=numero_dos;
		9'd29: decenas=numero_dos;
		
		9'd30: decenas=numero_tres;
		9'd31: decenas=numero_tres;
		9'd32: decenas=numero_tres;
		9'd33: decenas=numero_tres;
		9'd34: decenas=numero_tres;
		9'd35: decenas=numero_tres;
		9'd36: decenas=numero_tres;
		9'd37: decenas=numero_tres;
		9'd38: decenas=numero_tres;
		9'd39: decenas=numero_tres;
		
		9'd40: decenas=numero_cuatro;
		9'd41: decenas=numero_cuatro;
		9'd42: decenas=numero_cuatro;
		9'd43: decenas=numero_cuatro;
		9'd44: decenas=numero_cuatro;
		9'd45: decenas=numero_cuatro;
		9'd46: decenas=numero_cuatro;
		9'd47: decenas=numero_cuatro;
		9'd48: decenas=numero_cuatro;
		9'd49: decenas=numero_cuatro;
		
		9'd50: decenas=numero_cinco;
		9'd51: decenas=numero_cinco;
		9'd52: decenas=numero_cinco;
		9'd53: decenas=numero_cinco;
		9'd54: decenas=numero_cinco;
		9'd55: decenas=numero_cinco;
		9'd56: decenas=numero_cinco;
		9'd57: decenas=numero_cinco;
		9'd58: decenas=numero_cinco;
		9'd59: decenas=numero_cinco;
		
		9'd60: decenas=numero_seis;
		9'd61: decenas=numero_seis;
		9'd62: decenas=numero_seis;
		9'd63: decenas=numero_seis;
		9'd64: decenas=numero_seis;
		9'd65: decenas=numero_seis;
		9'd66: decenas=numero_seis;
		9'd67: decenas=numero_seis;
		9'd68: decenas=numero_seis;
		9'd69: decenas=numero_seis;
		
		9'd70: decenas=numero_siete;
		9'd71: decenas=numero_siete;
		9'd72: decenas=numero_siete;
		9'd73: decenas=numero_siete;
		9'd74: decenas=numero_siete;
		9'd75: decenas=numero_siete;
		9'd76: decenas=numero_siete;
		9'd77: decenas=numero_siete;
		9'd78: decenas=numero_siete;
		9'd79: decenas=numero_siete;
		
		9'd80: decenas=numero_ocho;
		9'd81: decenas=numero_ocho;
		9'd82: decenas=numero_ocho;
		9'd83: decenas=numero_ocho;
		9'd84: decenas=numero_ocho;
		9'd85: decenas=numero_ocho;
		9'd86: decenas=numero_ocho;
		9'd87: decenas=numero_ocho;
		9'd88: decenas=numero_ocho;
		9'd89: decenas=numero_ocho;
		
		9'd90: decenas=numero_nueve;
		9'd91: decenas=numero_nueve;
		9'd92: decenas=numero_nueve;
		9'd93: decenas=numero_nueve;
		9'd94: decenas=numero_nueve;
		9'd95: decenas=numero_nueve;
		9'd96: decenas=numero_nueve;
		9'd97: decenas=numero_nueve;
		9'd98: decenas=numero_nueve;
		9'd99: decenas=numero_nueve;
		
		9'd100: decenas=numero_cero;
		9'd101: decenas=numero_cero;
		9'd102: decenas=numero_cero;
		9'd103: decenas=numero_cero;
		9'd104: decenas=numero_cero;
		9'd105: decenas=numero_cero;
		9'd106: decenas=numero_cero;
		9'd107: decenas=numero_cero;
		9'd108: decenas=numero_cero;
		9'd109: decenas=numero_cero;
		
		9'd110: decenas=numero_uno;
		9'd111: decenas=numero_uno;
		9'd112: decenas=numero_uno;
		9'd113: decenas=numero_uno;
		9'd114: decenas=numero_uno;
		9'd115: decenas=numero_uno;
		9'd116: decenas=numero_uno;
		9'd117: decenas=numero_uno;
		9'd118: decenas=numero_uno;
		9'd119: decenas=numero_uno;
		
		9'd120: decenas=numero_dos;
		9'd121: decenas=numero_dos;
		9'd122: decenas=numero_dos;
		9'd123: decenas=numero_dos;
		9'd124: decenas=numero_dos;
		9'd125: decenas=numero_dos;
		9'd126: decenas=numero_dos;
		9'd127: decenas=numero_dos;
		9'd128: decenas=numero_dos;
		9'd129: decenas=numero_dos;
		
		
		9'd130: decenas=numero_tres;
		9'd131: decenas=numero_tres;
		9'd132: decenas=numero_tres;
		9'd133: decenas=numero_tres;
		9'd134: decenas=numero_tres;
		9'd135: decenas=numero_tres;
		9'd136: decenas=numero_tres;
		9'd137: decenas=numero_tres;
		9'd138: decenas=numero_tres;
		9'd139: decenas=numero_tres;
		
		9'd140: decenas=numero_cuatro;
		9'd141: decenas=numero_cuatro;
		9'd142: decenas=numero_cuatro;
		9'd143: decenas=numero_cuatro;
		9'd144: decenas=numero_cuatro;
		9'd145: decenas=numero_cuatro;
		9'd146: decenas=numero_cuatro;
		9'd147: decenas=numero_cuatro;
		9'd148: decenas=numero_cuatro;
		9'd149: decenas=numero_cuatro;
		
		9'd150: decenas=numero_cinco;
		9'd151: decenas=numero_cinco;
		9'd152: decenas=numero_cinco;
		9'd153: decenas=numero_cinco;
		9'd154: decenas=numero_cinco;
		9'd155: decenas=numero_cinco;
		9'd156: decenas=numero_cinco;
		9'd157: decenas=numero_cinco;
		9'd158: decenas=numero_cinco;
		9'd159: decenas=numero_cinco;
		
		
		9'd160: decenas=numero_seis;
		9'd161: decenas=numero_seis;
		9'd162: decenas=numero_seis;
		9'd163: decenas=numero_seis;
		9'd164: decenas=numero_seis;
		9'd165: decenas=numero_seis;
		9'd166: decenas=numero_seis;
		9'd167: decenas=numero_seis;
		9'd168: decenas=numero_seis;
		9'd169: decenas=numero_seis;
		
		9'd170: decenas=numero_siete;
		9'd171: decenas=numero_siete;
		9'd172: decenas=numero_siete;
		9'd173: decenas=numero_siete;
		9'd174: decenas=numero_siete;
		9'd175: decenas=numero_siete;
		9'd176: decenas=numero_siete;
		9'd177: decenas=numero_siete;
		9'd178: decenas=numero_siete;
		9'd179: decenas=numero_siete;
		
		9'd180: decenas=numero_ocho;
		9'd181: decenas=numero_ocho;
		9'd182: decenas=numero_ocho;
		9'd183: decenas=numero_ocho;
		9'd184: decenas=numero_ocho;
		9'd185: decenas=numero_ocho;
		9'd186: decenas=numero_ocho;
		9'd187: decenas=numero_ocho;
		9'd188: decenas=numero_ocho;
		9'd189: decenas=numero_ocho;
		
		9'd190: decenas=numero_nueve;
		9'd191: decenas=numero_nueve;
		9'd192: decenas=numero_nueve;
		9'd193: decenas=numero_nueve;
		9'd194: decenas=numero_nueve;
		9'd195: decenas=numero_nueve;
		9'd196: decenas=numero_nueve;
		9'd197: decenas=numero_nueve;
		9'd198: decenas=numero_nueve;
		9'd199: decenas=numero_nueve;
		
		9'd200: decenas=numero_cero;
		9'd201: decenas=numero_cero;
		9'd202: decenas=numero_cero;
		9'd203: decenas=numero_cero;
		9'd204: decenas=numero_cero;
		9'd205: decenas=numero_cero;
		9'd206: decenas=numero_cero;
		9'd207: decenas=numero_cero;
		9'd208: decenas=numero_cero;
		9'd209: decenas=numero_cero;
		
		9'd210: decenas=numero_uno;
		9'd211: decenas=numero_uno;
		9'd212: decenas=numero_uno;
		9'd213: decenas=numero_uno;
		9'd214: decenas=numero_uno;
		9'd215: decenas=numero_uno;
		9'd216: decenas=numero_uno;
		9'd217: decenas=numero_uno;
		9'd218: decenas=numero_uno;
		9'd219: decenas=numero_uno;
		
		9'd220: decenas=numero_dos;
		9'd221: decenas=numero_dos;
		9'd222: decenas=numero_dos;
		9'd223: decenas=numero_dos;
		9'd224: decenas=numero_dos;
		9'd225: decenas=numero_dos;
		9'd226: decenas=numero_dos;
		9'd227: decenas=numero_dos;
		9'd228: decenas=numero_dos;
		9'd229: decenas=numero_dos;
		
		9'd230: decenas=numero_tres;
		9'd231: decenas=numero_tres;
		9'd232: decenas=numero_tres;
		9'd233: decenas=numero_tres;
		9'd234: decenas=numero_tres;
		9'd235: decenas=numero_tres;
		9'd236: decenas=numero_tres;
		9'd237: decenas=numero_tres;
		9'd238: decenas=numero_tres;
		9'd239: decenas=numero_tres;
		
		9'd240: decenas=numero_cuatro;
		9'd241: decenas=numero_cuatro;
		9'd242: decenas=numero_cuatro;
		9'd243: decenas=numero_cuatro;
		9'd244: decenas=numero_cuatro;
		9'd245: decenas=numero_cuatro;
		9'd246: decenas=numero_cuatro;
		9'd247: decenas=numero_cuatro;
		9'd248: decenas=numero_cuatro;
		9'd249: decenas=numero_cuatro;
		
		9'd250: decenas=numero_cinco;
		9'd251: decenas=numero_cinco;
		9'd252: decenas=numero_cinco;
		9'd253: decenas=numero_cinco;
		9'd254: decenas=numero_cinco;
		9'd255: decenas=numero_cinco;
		9'd256: decenas=numero_cinco;
		9'd257: decenas=numero_cinco;
		9'd258: decenas=numero_cinco;
		9'd259: decenas=numero_cinco;
		
		9'd260: decenas=numero_seis;
		9'd261: decenas=numero_seis;
		9'd262: decenas=numero_seis;
		9'd263: decenas=numero_seis;
		9'd264: decenas=numero_seis;
		9'd265: decenas=numero_seis;
		9'd266: decenas=numero_seis;
		9'd267: decenas=numero_seis;
		9'd268: decenas=numero_seis;
		9'd269: decenas=numero_seis;
		
		9'd270: decenas=numero_siete;
		9'd271: decenas=numero_siete;
		9'd272: decenas=numero_siete;
		9'd273: decenas=numero_siete;
		9'd274: decenas=numero_siete;
		9'd275: decenas=numero_siete;
		9'd276: decenas=numero_siete;
		9'd277: decenas=numero_siete;
		9'd278: decenas=numero_siete;
		9'd279: decenas=numero_siete;
		
		9'd280: decenas=numero_ocho;
		9'd281: decenas=numero_ocho;
		9'd282: decenas=numero_ocho;
		9'd283: decenas=numero_ocho;
		9'd284: decenas=numero_ocho;
		9'd285: decenas=numero_ocho;
		9'd286: decenas=numero_ocho;
		9'd287: decenas=numero_ocho;
		9'd288: decenas=numero_ocho;
		9'd289: decenas=numero_ocho;
		
		9'd290: decenas=numero_nueve;
		9'd291: decenas=numero_nueve;
		9'd292: decenas=numero_nueve;
		9'd293: decenas=numero_nueve;
		9'd294: decenas=numero_nueve;
		9'd295: decenas=numero_nueve;
		9'd296: decenas=numero_nueve;
		9'd297: decenas=numero_nueve;
		9'd298: decenas=numero_nueve;
		9'd299: decenas=numero_nueve;
		
		9'd300: decenas=numero_cero;
		9'd301: decenas=numero_cero;
		9'd302: decenas=numero_cero;
		9'd303: decenas=numero_cero;
		9'd304: decenas=numero_cero;
		9'd305: decenas=numero_cero;
		9'd306: decenas=numero_cero;
		9'd307: decenas=numero_cero;
		9'd308: decenas=numero_cero;
		9'd309: decenas=numero_cero;
		
		9'd310: decenas=numero_uno;
		9'd311: decenas=numero_uno;
		9'd312: decenas=numero_uno;
		9'd313: decenas=numero_uno;
		9'd314: decenas=numero_uno;
		9'd315: decenas=numero_uno;
		9'd316: decenas=numero_uno;
		9'd317: decenas=numero_uno;
		9'd318: decenas=numero_uno;
		9'd319: decenas=numero_uno;
		
		9'd320: decenas=numero_dos;
		9'd321: decenas=numero_dos;
		9'd322: decenas=numero_dos;
		9'd323: decenas=numero_dos;
		9'd324: decenas=numero_dos;
		9'd325: decenas=numero_dos;
		9'd326: decenas=numero_dos;
		9'd327: decenas=numero_dos;
		9'd328: decenas=numero_dos;
		9'd329: decenas=numero_dos;
		
		9'd330: decenas=numero_tres;
		9'd331: decenas=numero_tres;
		9'd332: decenas=numero_tres;
		9'd333: decenas=numero_tres;
		9'd334: decenas=numero_tres;
		9'd335: decenas=numero_tres;
		9'd336: decenas=numero_tres;
		9'd337: decenas=numero_tres;
		9'd338: decenas=numero_tres;
		9'd339: decenas=numero_tres;
		
		9'd340: decenas=numero_cuatro;
		9'd341: decenas=numero_cuatro;
		9'd342: decenas=numero_cuatro;
		9'd343: decenas=numero_cuatro;
		9'd344: decenas=numero_cuatro;
		9'd345: decenas=numero_cuatro;
		9'd346: decenas=numero_cuatro;
		9'd347: decenas=numero_cuatro;
		9'd348: decenas=numero_cuatro;
		9'd349: decenas=numero_cuatro;
		
		9'd350: decenas=numero_cinco;
		9'd351: decenas=numero_cinco;
		9'd352: decenas=numero_cinco;
		9'd353: decenas=numero_cinco;
		9'd354: decenas=numero_cinco;
		9'd355: decenas=numero_cinco;
		9'd356: decenas=numero_cinco;
		9'd357: decenas=numero_cinco;
		9'd358: decenas=numero_cinco;
		9'd359: decenas=numero_cinco;
	endcase

///rom para centenas
always @*
	case (grad)
		9'd0: centenas=numero_cero;
		9'd1: centenas=numero_cero;
		9'd2: centenas=numero_cero;
		9'd3: centenas=numero_cero;
		9'd4: centenas=numero_cero;
		9'd5: centenas=numero_cero;
		9'd6: centenas=numero_cero;
		9'd7: centenas=numero_cero;
		9'd8: centenas=numero_cero;
		9'd9: centenas=numero_cero;
		
		9'd10: centenas=numero_cero;
		9'd11: centenas=numero_cero;
		9'd12: centenas=numero_cero;
		9'd13: centenas=numero_cero;
		9'd14: centenas=numero_cero;
		9'd15: centenas=numero_cero;
		9'd16: centenas=numero_cero;
		9'd17: centenas=numero_cero;
		9'd18: centenas=numero_cero;
		9'd19: centenas=numero_cero;
		
		9'd20: centenas=numero_cero;
		9'd21: centenas=numero_cero;
		9'd22: centenas=numero_cero;
		9'd23: centenas=numero_cero;
		9'd24: centenas=numero_cero;
		9'd25: centenas=numero_cero;
		9'd26: centenas=numero_cero;
		9'd27: centenas=numero_cero;
		9'd28: centenas=numero_cero;
		9'd29: centenas=numero_cero;
		
		9'd30: centenas=numero_cero;
		9'd31: centenas=numero_cero;
		9'd32: centenas=numero_cero;
		9'd33: centenas=numero_cero;
		9'd34: centenas=numero_cero;
		9'd35: centenas=numero_cero;
		9'd36: centenas=numero_cero;
		9'd37: centenas=numero_cero;
		9'd38: centenas=numero_cero;
		9'd39: centenas=numero_cero;
		
		9'd40: centenas=numero_cero;
		9'd41: centenas=numero_cero;
		9'd42: centenas=numero_cero;
		9'd43: centenas=numero_cero;
		9'd44: centenas=numero_cero;
		9'd45: centenas=numero_cero;
		9'd46: centenas=numero_cero;
		9'd47: centenas=numero_cero;
		9'd48: centenas=numero_cero;
		9'd49: centenas=numero_cero;
		
		9'd50: centenas=numero_cero;
		9'd51: centenas=numero_cero;
		9'd52: centenas=numero_cero;
		9'd53: centenas=numero_cero;
		9'd54: centenas=numero_cero;
		9'd55: centenas=numero_cero;
		9'd56: centenas=numero_cero;
		9'd57: centenas=numero_cero;
		9'd58: centenas=numero_cero;
		9'd59: centenas=numero_cero;
		
		9'd60: centenas=numero_cero;
		9'd61: centenas=numero_cero;
		9'd62: centenas=numero_cero;
		9'd63: centenas=numero_cero;
		9'd64: centenas=numero_cero;
		9'd65: centenas=numero_cero;
		9'd66: centenas=numero_cero;
		9'd67: centenas=numero_cero;
		9'd68: centenas=numero_cero;
		9'd69: centenas=numero_cero;
		
		9'd70: centenas=numero_cero;
		9'd71: centenas=numero_cero;
		9'd72: centenas=numero_cero;
		9'd73: centenas=numero_cero;
		9'd74: centenas=numero_cero;
		9'd75: centenas=numero_cero;
		9'd76: centenas=numero_cero;
		9'd77: centenas=numero_cero;
		9'd78: centenas=numero_cero;
		9'd79: centenas=numero_cero;
		
		9'd80: centenas=numero_cero;
		9'd81: centenas=numero_cero;
		9'd82: centenas=numero_cero;
		9'd83: centenas=numero_cero;
		9'd84: centenas=numero_cero;
		9'd85: centenas=numero_cero;
		9'd86: centenas=numero_cero;
		9'd87: centenas=numero_cero;
		9'd88: centenas=numero_cero;
		9'd89: centenas=numero_cero;
		
		9'd90: centenas=numero_cero;
		9'd91: centenas=numero_cero;
		9'd92: centenas=numero_cero;
		9'd93: centenas=numero_cero;
		9'd94: centenas=numero_cero;
		9'd95: centenas=numero_cero;
		9'd96: centenas=numero_cero;
		9'd97: centenas=numero_cero;
		9'd98: centenas=numero_cero;
		9'd99: centenas=numero_cero;
		
		9'd100: centenas=numero_uno;
		9'd101: centenas=numero_uno;
		9'd102: centenas=numero_uno;
		9'd103: centenas=numero_uno;
		9'd104: centenas=numero_uno;
		9'd105: centenas=numero_uno;
		9'd106: centenas=numero_uno;
		9'd107: centenas=numero_uno;
		9'd108: centenas=numero_uno;
		9'd109: centenas=numero_uno;
		
		9'd110: centenas=numero_uno;
		9'd111: centenas=numero_uno;
		9'd112: centenas=numero_uno;
		9'd113: centenas=numero_uno;
		9'd114: centenas=numero_uno;
		9'd115: centenas=numero_uno;
		9'd116: centenas=numero_uno;
		9'd117: centenas=numero_uno;
		9'd118: centenas=numero_uno;
		9'd119: centenas=numero_uno;
		
		9'd120: centenas=numero_uno;
		9'd121: centenas=numero_uno;
		9'd122: centenas=numero_uno;
		9'd123: centenas=numero_uno;
		9'd124: centenas=numero_uno;
		9'd125: centenas=numero_uno;
		9'd126: centenas=numero_uno;
		9'd127: centenas=numero_uno;
		9'd128: centenas=numero_uno;
		9'd129: centenas=numero_uno;
		
		
		9'd130: centenas=numero_uno;
		9'd131: centenas=numero_uno;
		9'd132: centenas=numero_uno;
		9'd133: centenas=numero_uno;
		9'd134: centenas=numero_uno;
		9'd135: centenas=numero_uno;
		9'd136: centenas=numero_uno;
		9'd137: centenas=numero_uno;
		9'd138: centenas=numero_uno;
		9'd139: centenas=numero_uno;
		
		9'd140: centenas=numero_uno;
		9'd141: centenas=numero_uno;
		9'd142: centenas=numero_uno;
		9'd143: centenas=numero_uno;
		9'd144: centenas=numero_uno;
		9'd145: centenas=numero_uno;
		9'd146: centenas=numero_uno;
		9'd147: centenas=numero_uno;
		9'd148: centenas=numero_uno;
		9'd149: centenas=numero_uno;
		
		9'd150: centenas=numero_uno;
		9'd151: centenas=numero_uno;
		9'd152: centenas=numero_uno;
		9'd153: centenas=numero_uno;
		9'd154: centenas=numero_uno;
		9'd155: centenas=numero_uno;
		9'd156: centenas=numero_uno;
		9'd157: centenas=numero_uno;
		9'd158: centenas=numero_uno;
		9'd159: centenas=numero_uno;
		
		
		9'd160: centenas=numero_uno;
		9'd161: centenas=numero_uno;
		9'd162: centenas=numero_uno;
		9'd163: centenas=numero_uno;
		9'd164: centenas=numero_uno;
		9'd165: centenas=numero_uno;
		9'd166: centenas=numero_uno;
		9'd167: centenas=numero_uno;
		9'd168: centenas=numero_uno;
		9'd169: centenas=numero_uno;
		
		9'd170: centenas=numero_uno;
		9'd171: centenas=numero_uno;
		9'd172: centenas=numero_uno;
		9'd173: centenas=numero_uno;
		9'd174: centenas=numero_uno;
		9'd175: centenas=numero_uno;
		9'd176: centenas=numero_uno;
		9'd177: centenas=numero_uno;
		9'd178: centenas=numero_uno;
		9'd179: centenas=numero_uno;
		
		9'd180: centenas=numero_uno;
		9'd181: centenas=numero_uno;
		9'd182: centenas=numero_uno;
		9'd183: centenas=numero_uno;
		9'd184: centenas=numero_uno;
		9'd185: centenas=numero_uno;
		9'd186: centenas=numero_uno;
		9'd187: centenas=numero_uno;
		9'd188: centenas=numero_uno;
		9'd189: centenas=numero_uno;
		
		9'd190: centenas=numero_uno;
		9'd191: centenas=numero_uno;
		9'd192: centenas=numero_uno;
		9'd193: centenas=numero_uno;
		9'd194: centenas=numero_uno;
		9'd195: centenas=numero_uno;
		9'd196: centenas=numero_uno;
		9'd197: centenas=numero_uno;
		9'd198: centenas=numero_uno;
		9'd199: centenas=numero_uno;
		
		9'd200: centenas=numero_dos;
		9'd201: centenas=numero_dos;
		9'd202: centenas=numero_dos;
		9'd203: centenas=numero_dos;
		9'd204: centenas=numero_dos;
		9'd205: centenas=numero_dos;
		9'd206: centenas=numero_dos;
		9'd207: centenas=numero_dos;
		9'd208: centenas=numero_dos;
		9'd209: centenas=numero_dos;
		
		9'd210: centenas=numero_dos;
		9'd211: centenas=numero_dos;
		9'd212: centenas=numero_dos;
		9'd213: centenas=numero_dos;
		9'd214: centenas=numero_dos;
		9'd215: centenas=numero_dos;
		9'd216: centenas=numero_dos;
		9'd217: centenas=numero_dos;
		9'd218: centenas=numero_dos;
		9'd219: centenas=numero_dos;
		
		9'd220: centenas=numero_dos;
		9'd221: centenas=numero_dos;
		9'd222: centenas=numero_dos;
		9'd223: centenas=numero_dos;
		9'd224: centenas=numero_dos;
		9'd225: centenas=numero_dos;
		9'd226: centenas=numero_dos;
		9'd227: centenas=numero_dos;
		9'd228: centenas=numero_dos;
		9'd229: centenas=numero_dos;
		
		9'd230: centenas=numero_dos;
		9'd231: centenas=numero_dos;
		9'd232: centenas=numero_dos;
		9'd233: centenas=numero_dos;
		9'd234: centenas=numero_dos;
		9'd235: centenas=numero_dos;
		9'd236: centenas=numero_dos;
		9'd237: centenas=numero_dos;
		9'd238: centenas=numero_dos;
		9'd239: centenas=numero_dos;
		
		9'd240: centenas=numero_dos;
		9'd241: centenas=numero_dos;
		9'd242: centenas=numero_dos;
		9'd243: centenas=numero_dos;
		9'd244: centenas=numero_dos;
		9'd245: centenas=numero_dos;
		9'd246: centenas=numero_dos;
		9'd247: centenas=numero_dos;
		9'd248: centenas=numero_dos;
		9'd249: centenas=numero_dos;
		
		9'd250: centenas=numero_dos;
		9'd251: centenas=numero_dos;
		9'd252: centenas=numero_dos;
		9'd253: centenas=numero_dos;
		9'd254: centenas=numero_dos;
		9'd255: centenas=numero_dos;
		9'd256: centenas=numero_dos;
		9'd257: centenas=numero_dos;
		9'd258: centenas=numero_dos;
		9'd259: centenas=numero_dos;
		
		9'd260: centenas=numero_dos;
		9'd261: centenas=numero_dos;
		9'd262: centenas=numero_dos;
		9'd263: centenas=numero_dos;
		9'd264: centenas=numero_dos;
		9'd265: centenas=numero_dos;
		9'd266: centenas=numero_dos;
		9'd267: centenas=numero_dos;
		9'd268: centenas=numero_dos;
		9'd269: centenas=numero_dos;
		
		9'd270: centenas=numero_dos;
		9'd271: centenas=numero_dos;
		9'd272: centenas=numero_dos;
		9'd273: centenas=numero_dos;
		9'd274: centenas=numero_dos;
		9'd275: centenas=numero_dos;
		9'd276: centenas=numero_dos;
		9'd277: centenas=numero_dos;
		9'd278: centenas=numero_dos;
		9'd279: centenas=numero_dos;
		
		9'd280: centenas=numero_dos;
		9'd281: centenas=numero_dos;
		9'd282: centenas=numero_dos;
		9'd283: centenas=numero_dos;
		9'd284: centenas=numero_dos;
		9'd285: centenas=numero_dos;
		9'd286: centenas=numero_dos;
		9'd287: centenas=numero_dos;
		9'd288: centenas=numero_dos;
		9'd289: centenas=numero_dos;
		
		9'd290: centenas=numero_dos;
		9'd291: centenas=numero_dos;
		9'd292: centenas=numero_dos;
		9'd293: centenas=numero_dos;
		9'd294: centenas=numero_dos;
		9'd295: centenas=numero_dos;
		9'd296: centenas=numero_dos;
		9'd297: centenas=numero_dos;
		9'd298: centenas=numero_dos;
		9'd299: centenas=numero_dos;
		
		9'd300: centenas=numero_tres;
		9'd301: centenas=numero_tres;
		9'd302: centenas=numero_tres;
		9'd303: centenas=numero_tres;
		9'd304: centenas=numero_tres;
		9'd305: centenas=numero_tres;
		9'd306: centenas=numero_tres;
		9'd307: centenas=numero_tres;
		9'd308: centenas=numero_tres;
		9'd309: centenas=numero_tres;
		
		9'd310: centenas=numero_tres;
		9'd311: centenas=numero_tres;
		9'd312: centenas=numero_tres;
		9'd313: centenas=numero_tres;
		9'd314: centenas=numero_tres;
		9'd315: centenas=numero_tres;
		9'd316: centenas=numero_tres;
		9'd317: centenas=numero_tres;
		9'd318: centenas=numero_tres;
		9'd319: centenas=numero_tres;
		
		9'd320: centenas=numero_tres;
		9'd321: centenas=numero_tres;
		9'd322: centenas=numero_tres;
		9'd323: centenas=numero_tres;
		9'd324: centenas=numero_tres;
		9'd325: centenas=numero_tres;
		9'd326: centenas=numero_tres;
		9'd327: centenas=numero_tres;
		9'd328: centenas=numero_tres;
		9'd329: centenas=numero_tres;
		
		9'd330: centenas=numero_tres;
		9'd331: centenas=numero_tres;
		9'd332: centenas=numero_tres;
		9'd333: centenas=numero_tres;
		9'd334: centenas=numero_tres;
		9'd335: centenas=numero_tres;
		9'd336: centenas=numero_tres;
		9'd337: centenas=numero_tres;
		9'd338: centenas=numero_tres;
		9'd339: centenas=numero_tres;
		
		9'd340: centenas=numero_tres;
		9'd341: centenas=numero_tres;
		9'd342: centenas=numero_tres;
		9'd343: centenas=numero_tres;
		9'd344: centenas=numero_tres;
		9'd345: centenas=numero_tres;
		9'd346: centenas=numero_tres;
		9'd347: centenas=numero_tres;
		9'd348: centenas=numero_tres;
		9'd349: centenas=numero_tres;
		
		9'd350: centenas=numero_tres;
		9'd351: centenas=numero_tres;
		9'd352: centenas=numero_tres;
		9'd353: centenas=numero_tres;
		9'd354: centenas=numero_tres;
		9'd355: centenas=numero_tres;
		9'd356: centenas=numero_tres;
		9'd357: centenas=numero_tres;
		9'd358: centenas=numero_tres;
		9'd359: centenas=numero_tres;	
	endcase
	
	endmodule 
	