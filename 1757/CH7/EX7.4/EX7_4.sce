//Example7.4  // to determine the cut-off frequency and pass band gain Af
clc;
clear;
close;
R1 = 1 ; // k ohm
R2 = 12 ; // k ohm
R3 = 1.2 ;  // k ohm
C = 0.05 ; //uF // we assume

// the frequency of the first order low pass filter is defined as
fc = (1/(2*%pi*R3*C));
disp('The frequency of the first order low pass filter is = '+string(fc)+' KHz ');

// the pass band gain of filter is given by
Af =(1+R2/R1);
disp('The pass band gain of filter is = '+string(Af)+'');
