`timescale 1ns / 1ps

module seven_segment_decoder(
	input [7:0] bin_in,
	input [1:0] anodeSelect,
	output reg [7:0] anode,
	output reg [6:0] hex_out
	);
     	wire[3:0] ones = bin_in % 10;
     	wire[3:0] tens = bin_in / 10;
     	wire[3:0] hundreds = bin_in / 100;
    	 
     	always @(*)
     	begin
     	case(anodeSelect)
     	2'b00 : begin
     	anode = 8'b11111110;
     	end
     	2'b01 : begin
     	anode = 8'b11111101;
     	end
     	2'b10 : begin
     	anode = 8'b11111011;
     	end
     	default : begin
     	anode = 8'b11111111;
     	end
    	 
     	endcase
     	end
     	always @(*)
        	begin
        	case (anodeSelect) //case statement
        	2'b00 : begin
         	case(ones)
         	0 : hex_out = 7'b0000001 ;
        	1 : hex_out = 7'b1001111;
        	2 : hex_out = 7'b0010010;
        	3 : hex_out = 7'b0000110;
        	4 : hex_out = 7'b1001100;
        	5 : hex_out = 7'b0100100;
        	6 : hex_out = 7'b0100000;
        	7 : hex_out = 7'b0001111;
        	8 : hex_out = 7'b0000000;
        	9 : hex_out = 7'b0000100;
        	//switch off 7 segment character
        	default : hex_out = 7'b1111111;
        	endcase
    	end
         	2'b01 : begin
         	case(tens)
         	0 : hex_out = 7'b0000001;
        	1 : hex_out = 7'b1001111;
        	2 : hex_out = 7'b0010010;
        	3 : hex_out = 7'b0000110;
        	4 : hex_out = 7'b1001100;
        	5 : hex_out = 7'b0100100;
        	6 : hex_out = 7'b0100000;
        	7 : hex_out = 7'b0001111;
        	8 : hex_out = 7'b0000000;
        	9 : hex_out = 7'b0000100;
        	//switch off 7 segment character
        	default : hex_out = 7'b1111111;
    	endcase
    	end
        	2'b10 : begin
         	case(hundreds)
         	0 : hex_out = 7'b0000001 ;
        	1 : hex_out = 7'b1001111;
        	2 : hex_out = 7'b0010010;
        	3 : hex_out = 7'b0000110;
        	4 : hex_out = 7'b1001100;
        	5 : hex_out = 7'b0100100;
        	6 : hex_out = 7'b0100000;
        	7 : hex_out = 7'b0001111;
        	8 : hex_out = 7'b0000000;
        	9 : hex_out = 7'b0000100;
        	//switch off 7 segment character
        	default : hex_out = 7'b1111111;
        	endcase
        	end
        	default : hex_out = 7'b11111111;
    	endcase
	end
endmodule



