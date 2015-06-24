//Example6_41  // To find the value of resistance R1 for instrumentation amplifier
clc;
clear;
close;
A =100 ;
R2 = 450*10^3 ;
R3 = 1*10^3 ;
R4 = 1*10^3 ;

// The gain of differential amplifier 
// A = (R4/R3)*(1+(2R2/R1)) ;
//but  R3 = R4  then
// A = 1+(2R2/R1) ;
R1 = 2*R2/(A-1);
disp('The value of resistane R1 is = '+string(R1)+ ' ohm'); 
