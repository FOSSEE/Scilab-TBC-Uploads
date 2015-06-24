// Exa 6.16
clc;
clear;
close;
format('v',7)
// Given data
D = 10/100;// distortion without feedback
Df = 1/100;// distortion with feedback
Beta = 10/100;// feedback ratio
// Df = D/(1+(Beta*A));
A = ((D/Df)-1)/Beta;// open loop gain
disp(A,"The open loop gain is");
Af = A/(1+(Beta*A));// closed loop gain
disp(Af,"The closed loop gain is");
