`timescale 1ns / 1ps


module TB(
    );
    
    reg Increment1, Increment5, Increment25, setGrade, resetGrades, clearCurrent, displayGrades, saveGrade;
    wire [7:0]allGrades;
    //wire [7:0]gradeStorage[7:0];
    
    
    gradeTracker DUT(.Increment1(Increment1), .Increment5(Increment5), .Increment25(Increment25), .saveGrade(saveGrade), .setGrade(setGrade), .resetGrades(resetGrades), .clearCurrent(clearCurrent), .displayGrades(displayGrades), .allGrades(allGrades));//, .gradeStorage(gradeStorage));
    
    initial
    begin
        //setGrade = 1;
        Increment1 = 0;
        Increment5 = 0;
        Increment25 = 0;
        #10;
        
        Increment5 = 1;
        #10;
        Increment1 = 1;
        #10;
        Increment1 = 0;
        Increment5 = 0;
        Increment25 = 1;
        #10;
        Increment25 = 0;
        #10;
        Increment25 = 1;
        #10;
        
                
        Increment1 = 0;
        Increment5 = 0;
        Increment25 = 0;
        //clearCurrent = 1;
        saveGrade = 1;
        #10;
        saveGrade = 0;
        #10;
        
        //setGrade = 1;
        
        Increment1 = 1;
        Increment5 = 1;
        Increment25 = 1;
        #10;
        Increment1 = 0;
        Increment5 = 0;
        Increment25 = 0;
        #10;
        Increment25 = 1;
        #10;
        Increment25 = 0;
        #10;
        Increment25 = 1;
        #10;
        Increment25 = 0;
        #10;
        Increment25 = 1;
        #10;
        Increment25 = 0;
        #10;
        Increment25 = 1;
        #10;
        Increment25 = 0;
        #10;
        Increment25 = 1;
        #10;
        Increment25 = 0;
        #10;
        Increment5 = 1;
        #10;
        Increment5 = 0;
        #10;
        Increment1 = 1;
        #10;
        Increment1 = 0;
        #10;
        
        
        saveGrade = 1;
        #10;
        saveGrade = 0;
        
        
        
    end
    
    
endmodule


