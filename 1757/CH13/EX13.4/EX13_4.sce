//Example13.4  // to design the wien bridge oscillator for the oscillation frequency f = 1 KHz
clc;
clear;
close;
f = 1 ; // K ohm
C = 0.01 ;  // uF


// the frequency f is define as
// f = 1/(2*%pi*R*C);

// the resistor R is
R = 1/(2*%pi*f*C);
disp('the resistor R is = '+string(R)+ ' K ohm ');

// the loop gain of the wien bridge oscillator is unity which is defined as
// A = (1+(R2/R1))*(1/3) = 1 ;
//  R2/R1 = 2 ;
R1 = 10 ;  // K ohm we assume
R2 = 2*R1 ;
disp('The resistor R2 value is = '+string(R2)+ ' K ohm '); 
