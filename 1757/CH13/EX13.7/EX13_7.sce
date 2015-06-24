//Example13.7  // Design astable multivibrator for the frequency f = 10 KHz
clc;
clear;
close
f = 10 ; // K ohm
Vsat = 3 ;
VT = 0.7 ;

// The saturation voltage of an astable multivibrator is defined as
//  Vsat = (R1+R2/R1)+VT ;
R1 = 10 ;  // K ohm  we choose
R2 = ((Vsat/VT)-1)*R1 ;
disp('The value of resistance R2 is = '+string(R2)+  ' K ohm ');

// The frequency of an astable multivibrator is defined as
C = 0.01 ;  // uF
// f = (1/(2*R*C*log(1+(2*R1/R2))));

R = 1/(2*f*C*log(1+2*R1/R2));
disp('The value of resistor R is = '+string(R)+ ' K ohm');
