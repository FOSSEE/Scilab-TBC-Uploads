//Example7.7  // to design an active high pass filter with cut-off frequency 25KHz
clc;
clear;
close;
fc = 25 ; // KHz 
C = 0.1 ; //nF // we assume
// the cut-off frequency of active high pass filter is given by
// fc = 2*%pi*R3*C;
// R3 can be calculated as
R3 = (1/(2*%pi*fc*C));
disp('The resistance R3 is = '+string(R3)+' ohm ');

// the desire pass band gain of filter is given by 
//Af = 1+(R2/R1);
// assume that the inverting terminal resistor R2=0.2*R1;
// in Af equation if we put R2=0.2R1 in R1 R1 cancellout each other 
Af = 1+(0.2)
disp('The pass band gain is = '+string(Af)+' ');
