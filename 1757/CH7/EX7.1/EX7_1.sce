//Example7.1  // Design active low filter with cut-off frequency 10 KHz
clc;
clear;
close;
fc = 10 ; // KHz
C = 0.01 ; //uF // we assume

// the cut-off frequency of active low pass filter is defined as
// fc = (1/2*%pi*R3*C);

// R3 can be calculated as
R3 = (1/(2*%pi*fc*C));
disp('The resistor value is = '+string(R3)+' k ohm ');
