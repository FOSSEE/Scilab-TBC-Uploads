// Exa 6.19
clc;
clear;
close;
format('v',5)
// Given data
A = 1000;// open loop gain
D = 10/100;// distortion without feedback
Vs = 10;// in mV
Vs = Vs * 10^-3;// in V
BetaA = 40;// in dB
BetaA= 10^(BetaA/20);// unit less
Vdesh_s = Vs*(1+BetaA);// in V
disp(Vdesh_s,"The required input signal in V is");
Df = (D/(1+BetaA))*100;// in % 
disp(Df,"The percentage second harmonic distortion in % is");
Af = A/(1+BetaA);// unit less
disp(Af,"The closed loop voltage gain is");
