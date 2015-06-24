// Exa 6.5
clc;
clear;
close;
format('v',6)
// Given data
A = 60;// in dB
A = 10^(A/20);// unit less
Beta = 1/20;// feedback fraction
Af = A/(1+(Beta*A));// gain with feedback
Af = 20*log10(Af);// in dB 
disp(Af,"The gain with feed back in dB is");
