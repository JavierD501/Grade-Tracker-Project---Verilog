`timescale 1ns / 1ps

module topDown(
	output[6:0] hex_out,
	output[7:0] anode,
    input CLK,
	input Increment1,
	input Increment5,
	input Increment25,
	input resetGrades,
	input saveGrade,
	input clearCurrent,
	input displayGrades
	);

wire[7:0] gradeIn;
wire[1:0] anSelect;
wire sCLK1;

clockDivider CD(.clk(CLK), .sclk(sCLK1), .anodeSelect(anSelect));
gradeTracker GT1(.grade(gradeIn), .CLK(sCLK1), .Increment1(Increment1), .Increment5(Increment5), .Increment25(Increment25), .resetGrades(resetGrades), .saveGrade(saveGrade), .clearCurrent(clearCurrent), .displayGrades(displayGrades));
seven_segment_decoder decoder(.bin_in(gradeIn), .anodeSelect(anSelect), .hex_out(hex_out), .anode(anode));

endmodule






