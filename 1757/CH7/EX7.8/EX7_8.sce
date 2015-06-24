
//Example7.8  // to design an active high pass filter with cut-off frequency 20KHz 
clc;
clear;
close;
Af = 15 ;
fc = 20 ; //KHz
f = 80 ; // KHz  the frequency of filter 
C = 0.05 ; //nF // we assume
// the cut-off frequency of active high pass filter is given by
// fc = 2*%pi*R3*C;
// R3 can be calculated as
R3 = (1/(2*%pi*fc*C));
disp('The resistance R3 is = '+string(R3*1000)+' K ohm ');  // Round Off Error

// the desire pass band gain of filter is given by 
//Af = 1+(R2/R1);
// assume that the inverting terminal resistor R1=50 K ohm;
R1 = 50 ; // K ohm
R2 = (R1*Af)-(R1)
disp('The resistance R2 is = '+string(R2)+' K ohm ');

// the magnitude of an active high pass filter is given as
A = Af*(f/fc)/(sqrt(1+(f/fc)^2));
disp('The magnitude of an active high pass filter is = '+string(A)+' ');

//the phase angle of the filter
Angle = -atand(f/fc)+atand(%inf);
disp('The phase angle of the filter is = '+string(Angle)+' degree');  // Round Off Error
