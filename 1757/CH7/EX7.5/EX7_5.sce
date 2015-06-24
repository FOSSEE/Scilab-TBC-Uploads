//Example7.5  // to design a first order high pass filter with cut-off frequency 2KHz
clc;
clear;
close;
Af = 10 ;
fc = 2 ; // KHz 
R3 = 2 ; //K ohm // we assume
R1 = 10 ; // k ohm
// the capacitor of high pass filter is given by
C = 2*%pi*R3*fc;
disp('The capacitor of high pass filter is = '+string(C)+' uF ');

// the voltage gain of the high pass filter is
// Af = 1+(R2/R1);
R2 = R1*(Af-1);
disp('The second resistor value is = '+string(R2)+' K ohm ');



