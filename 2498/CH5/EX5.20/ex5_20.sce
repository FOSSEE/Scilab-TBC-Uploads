// Exa 5.20
clc;
clear;
close;
format('v',6)
// Given data
Vi= 10*10^-3;// input voltage in V
A=1000;// open loop voltage gain
Do= 10;//second harmonic distortion in %
feedback= 40;//feedback in dB
feedback= 10^(feedback/20);
// feedback= 1+A*bita or
bita= (feedback-1)/A
Af= A/(1+A*bita);
// New value of second harmonic distortion,
Df= Do/(1+A*bita);// in %
disp(Df," The new value of second harmonic distortion in % is : ")
// New value of input required,
Vs= Vi*(1+A*bita);// in V
disp(Vs,"The new value of input required in volts is : ")
