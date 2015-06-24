// Exa 6.18
clc;
clear;
close;
format('v',7)
// Given data
D = 10/100;// distortion without feedback
Df = 1/100;// distortion with feedback
A = 200;// unit less
// Df = D/(1+(Beta*A));
Beta = ((D/Df)-1)/A;// unit less
Af = A/(1+(Beta*A));// unit less
disp(Af,"The gain voltage with feed back is");
Vs = 10;// in mV
Vs = Vs * 10^-3;// in V
Vout = Af*Vs;// in V
disp(Vout,"The output voltage with feed back in V is");
