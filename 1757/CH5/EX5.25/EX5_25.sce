//Example5.25  // To determine the cut off frequency of an op-amp
clc;
clear;
close;
f = 1*10^3 ; // Hz // unity frequency
Av = 200 ; // V/mV  // dc gain

// the unity gain frequency of an op-amp is defined as
// f = Av*fc ;

// cut off frequency
fc = (f/Av);
disp('Cut -off frequency of an op-amp is = '+string(fc)+' Hz ');
