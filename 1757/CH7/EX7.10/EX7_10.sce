//Example7.10  // to design an active band pass filter with lower cut-off frequency 10 KHz an upper 50 KHZ
clc;
clear;
close;
fL = 10 ; // KHz
fH = 50 ; // KHz
C1 = 0.002 ; // nF
C2 = 0.002 ;  // nF

// the lower cut-off frequency of band pass filter is
// fL = 1/(2*%pi*R3*C1);
R3 = 1/(2*%pi*fL*C1);
disp('The resistance R3 Value is = '+string(R3)+' M ohm ');

// The upper cut-off frequency of band pass filter is
// fH = 1/(2*%pi*R6*C2);
R6 = 1/(2*%pi*fH*C2);
disp('The resistance R6 value is = '+string(R6)+' M ohm ');
