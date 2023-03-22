`timescale 1ns / 1ps


module gradeTracker(
    output [7:0] grade,
    input CLK,
    input Increment1,
    input Increment5,
    input Increment25,
    input resetGrades,
    input saveGrade,
    input clearCurrent,
    input displayGrades
    );
    

    reg [3:0] counter = 4'b0000;
    reg [7:0] grade = 8'b00000000;
    reg [7:0] gradeStorage [7:0]; //8 depth wide with 8bits each
    //always@(*)
    always @(posedge CLK or posedge resetGrades)
    begin
    if(resetGrades)
	begin
    	counter = 4'b0000;
    	gradeStorage[0][7:0] = 8'b00000000;
    	gradeStorage[1][7:0] = 8'b00000000;
    	gradeStorage[2][7:0] = 8'b00000000;
    	gradeStorage[3][7:0] = 8'b00000000;
    	gradeStorage[4][7:0] = 8'b00000000;
    	gradeStorage[5][7:0] = 8'b00000000;
    	gradeStorage[6][7:0] = 8'b00000000;
    	gradeStorage[7][7:0] = 8'b00000000;
	end
	else
	begin
    	if(Increment1)
       	if(grade + 1'b1 >= 7'd100)
   		grade  = 7'd100;
   		else
   		grade = grade + 1'b1;
    	else if(Increment5)
     		 if(grade + 7'd5 >= 7'd100)
   	    	grade  = 7'd100;
   		else
   	    	grade = grade + 7'd5;
    	else if(Increment25)
     		 if(grade + 7'd25 >= 7'd100)
   	    	grade  = 7'd100;
   		else
   	    	grade = grade + 7'd25;
    	else if(clearCurrent)
        	grade = 1'b0;
    	else if(displayGrades)
    	begin
        	grade = grade;
        	counter = counter - 1'b1;
    	end
    	else if (saveGrade)
        	begin
        	gradeStorage[counter][7:0] = grade;
        	counter = counter + 1'b1;
        	grade = grade - grade;
        	end
    	end
    	end
    
endmodule







