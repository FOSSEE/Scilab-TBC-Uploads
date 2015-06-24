// Exa 6.7
clc;
clear;
close;
format('v',7)
// Given data
A = 60;// in dB
A = 10^(A/20);// unit less
Af = 40;// in dB
Af = 10^(Af/20);// unit less
// Af = A/(1+(A*Beta));
BetaIntoA = (A/Af)-1;// feedback factor
disp(BetaIntoA,"The feed back factor is");
