//Example7.9  // to calculate upper and lower cut-off frequency of the band pass filter
clc;
clear;
close;
R1 = 10*10^3 ; //K ohm
R2 = 10 ; //K ohm
C1 = 0.1*10^-6 ; // uF
C2 = 0.001 ;  //uF

// the lower cut-off frequency of band pass filter is
fLC = 1/(2*%pi*R1*C1);
disp('The lower cut-off frequency FLC of band pass filter is = '+string(fLC)+' Hz ');

// The upper cut-off frequency of band pass filter is
fUC = 1/(2*%pi*R2*C2);
disp('The upper cut-off frequency FUC of band pass filter is = '+string(fUC)+' KHz ');
