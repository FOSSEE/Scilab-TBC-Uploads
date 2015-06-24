//Example7.3  // Design active low filter with cut-off frequency 20 KHz
clc;
clear;
close;
fc = 20 ; // KHz 
f = 100 ; // frequency of filter
Af = 10 ;  // desired pass band gain
C = 0.05 ; //nF // we assume

// the cut-off frequency of active low pass filter is defined as
// fc = (1/2*%pi*R3*C);

// R3 can be calculated as
R3 = (1/(2*%pi*fc*C));
disp('The resistor value is = '+string(R3)+' ohm ');

// the pass band gain of filter is given by
// Af = 1+(R2/R1);
// assume that the inverting terminal resistor R1= 100 k ohm;
R1 = 100 ; // k ohm
R2 = (Af*R1)-R1;
disp('The resistor R2 value is = '+string(R2)+' k ohm ');

// the magnitude of an active low pass filter is given as
A = Af/(sqrt(1+(f/fc)^2));
disp('The magnitude of an active low pass filter is = '+string(A)+' ');

//the phase angle of the filter
Angle = -atand(f/fc);
disp('The phase angle of the filter is = '+string(Angle)+' ');


