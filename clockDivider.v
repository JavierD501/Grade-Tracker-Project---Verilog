`timescale 1ns / 1ps


module clockDivider(
	input clk,
	output reg sclk,
	output reg [1:0] anodeSelect
	);
	reg [31:0] count;
	always@(posedge clk)
	begin
	if(count == 32'd11111111) begin
	count <= 32'd0;
	sclk <= ~sclk;
	anodeSelect <= anodeSelect + 1;
	end else begin
	count <= count + 1;
	end
	end
	endmodule



