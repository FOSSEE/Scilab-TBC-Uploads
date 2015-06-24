// Exa 10.1
clc;
clear;
close;
format('v',6)
// Given data
A = 60;// in dB
A= 10^(A/20)
Beta = 0.005;
dAbyA = -12/100;
// On putting the value of A, bita and dA/A
dAfbyAf = (1/(1+A*Beta))*(dAbyA);
disp(dAfbyAf,"The change in overall gain is");
