//clear//
//Caption: Power gain calculation for a signal travelling from
//one point to another point
//Example 1.7
//page 14
clear;
clc;
close;
Loss_line1 = -9; //-9 dB
Amp_gain2 = 14; //14 dB
Loss_line3 = -3; //-3 dB
dB_at_line4 = Loss_line1+Amp_gain2+Loss_line3; 
disp(dB_at_line4,'The amount of power gained by a signal travelling from point1 to point4 in dB = ')
//Result
//The amount of power gained by a signal travelling from point1 to point4 in dB =    2.  
