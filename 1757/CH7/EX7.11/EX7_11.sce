//Example7.11  // to design an active band pass filter with lower cut-off frequency 20 KHz an upper 40 KHZ
clc;
clear;
close;
fL = 20 ; // KHz
fH = 40 ; // KHz
// the inverting terminal resistance 2R1=R2 and 4R4=R5
C1 = 0.001 ; // nF
C2 = 0.001 ;  // nF

// the lower cut-off frequency of band pass filter is
// fL = 1/(2*%pi*R3*C1);
R3 = 1/(2*%pi*fL*C1);
disp('The resistance R3 Value is = '+string(R3)+' M ohm ');

// The upper cut-off frequency of band pass filter is
// fH = 1/(2*%pi*R6*C2);
R6 = 1/(2*%pi*fH*C2);
disp('The resistance R6 value is = '+string(R6)+' M ohm ');

// the desire pass band gain of filter is defined as
R1 = 1 ; // M ohm we assume
//we define inverting terminal resistance 2R1=R2
R2 = 2 ; // M ohm
// then
R4 = 1 ; //M ohm
R5 = 4 ; // M ohm
Af = (1+(R2/R1))*(1+(R5/R4));
disp('The desire pass band gain of filter is = '+string(Af)+' ');
