//Example6_38  // Design high sensitivity current to voltage converter
clc;
clear;
close;
R1 = 5*10^3 ;
is = 1 ;
KR = 0.01/10^9 ;  //    V / nA

// the output voltage of high sensitivity current to voltage converter
Vo =-KR*is ;
KR = 10*10^6 ;
R = 1*10^6 ;   //we assume   then
K = 10 ;
//1 + (R2/R1)+(R2/R) = 10 ;
// solving above equation we get

R2 = 9*((5*10^6)/(10^3+5)) ;
disp ('The value of resistance R2 is = '+string(R2)+ ' ohm'); 
