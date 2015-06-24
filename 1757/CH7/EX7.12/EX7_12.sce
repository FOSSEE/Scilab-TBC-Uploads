
//Example7.12  // to design an active band pass filter with lower cut-off frequency 20 KHz an upper 80 KHZ
clc;
clear;
close;
f = 100 ; // KHz  the frequency of band pass filter
fL = 20 ; // KHz
fH = 80 ; // KHz
// the inverting terminal resistance R1=0.5*R2 and R4=0.25*R5
C1 = 0.001 ; // nF
C2 = 0.001 ;  // nF

// the lower cut-off frequency of band pass filter is
// fL = 1/(2*%pi*R3*C1);
R3 = 1/(2*%pi*fL*C1);
disp('The resistance R3 Value is = '+string(R3)+' M ohm ');

// The upper cut-off frequency of band pass filter is
// fH = 1/(2*%pi*R6*C2);
R6 = 1/(2*%pi*fH*C2);
disp('The resistance R6 value is = '+string(R6)+' M ohm ');  // Round Off Error

// the desire pass band gain of filter is defined as
R1 = 1 ; // M ohm we assume
//we define inverting terminal resistance R1=0.5*R2
R2 = 2 ; // M ohm
// then
R4 = 1 ; //M ohm
R5 = 4 ; // M ohm
Af = (1+(R2/R1))*(1+(R5/R4));
disp('The desire pass band gain of filter is = '+string(Af)+' ');

// the magnitude of gain of band pass filter is given as
A = Af*(f^2/(fL*fH))/((sqrt(1+(f/fL)^2))*(sqrt(1+(f/fH)^2)));
disp('The magnitude of gain of band pass filter  is = '+string(A)+' ');  // Round Off Error

//the phase angle of the filter
Angle = 2*atand(%inf)-atand(f/fL)-atand(f/fH);
disp('The phase angle of gain of band pass filter  is = '+string(Angle)+' degree');  // Round Off Error
