// Exa 6.17
clc;
clear;
close;
format('v',7)
// Given data
A = 150;// open loop voltage gain
Beta = 10/100;// feedback ratio
D = 5/100;// distortion without feedback
Df = D/(1+(Beta*A));// distortion with feedback
Df = Df * 100;// in %
disp(Df,"The distortion of the amplifier with feed back in % is");
