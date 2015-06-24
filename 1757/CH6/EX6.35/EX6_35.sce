//Example6_35  // Design a difference amplifier
clc;
clear;
close;
Ri = 50*10^3 ;
Ad = 30 

R1 = Ri/2 ;
disp('The value of resistance R1 is = '+string(R1)+ ' ohm');
R3 = R1 ;
disp('The value of resistance R3 is = '+string(R3)+ ' ohm');

// the differential gain
//Ad = R2/R1 ;
R2 = 30*R1 ;
disp('The value of resistance R2 is = '+string(R2)+ ' ohm');

R4 = R2 ;
disp('The value of resistance R4 is = '+string(R4)+ ' ohm'); 
