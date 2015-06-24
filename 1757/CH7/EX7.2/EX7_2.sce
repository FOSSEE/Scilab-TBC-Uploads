//Example7.2  // Design active low filter with cut-off frequency 15 KHz
clc;
clear;
close;
fc = 15*10^3 ; // Hz 
C = 0.1*10^-6 ; //F // we assume

// the cut-off frequency of active low pass filter is defined as
// fc = (1/2*%pi*R3*C);

// R3 can be calculated as
R3 = (1/(2*%pi*fc*C));
disp('The resistor value is = '+string(R3)+' ohm ');

// the pass band gain of filter is given by
// Af = 1+(R2/R1);
// assume that the inverting terminal resistor R2=0.5*R1;
// in Af equation if we put R2=0.5R1 in R1 R1 cancellout each other 
Af = 1+(0.5)
disp('The pass band gain is = '+string(Af)+' ');
