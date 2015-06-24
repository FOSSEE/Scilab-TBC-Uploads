
//Example13.9   // Design a monostable circuit with frequency f = 25 KHz
clc;
clear;
close;
f =25*10^3 ; // Hz

// The output frequency of monostable multivibrator is defined as 
//  f = 1/(0.69*R*C);
C = 0.1*10^-6 ;
R = 1/(0.69*f*C);
disp('The value of resistance R is = '+string(R)+ ' ohm ');

// In the practical monostable multivibrator
//  ln(1+(R2/R1))= 0.69 ;
R1 = 10*10^3 ;  // we choose
R2 = R1*(1.99372-1);
disp('The value of resistance R2 is = '+string(R2/1000)+  ' K ohm ');  // Round Off Error 
