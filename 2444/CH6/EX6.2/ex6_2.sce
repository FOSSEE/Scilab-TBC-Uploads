// Exa 6.2
clc;
clear;
close;
format('v',7)
// Given data
Beta = 0.01;//feedback fraction
// Voltage gain with negative feedback
A = 3000;// unit less
Af = A/(1+(Beta*A));// unit less
disp(Af,"The voltage gain of the amplifier is");
