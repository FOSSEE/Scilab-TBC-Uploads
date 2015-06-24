// Exa 7.16
clc;
clear;
close;
format('v',5)
// Given data
R_E = 60;// in k ohm
R_E = R_E * 10^3;// in ohm
C = 0.25;// in µF
C = C * 10^-6;// in F
Eta = 0.65;
f = 1/(2.3*R_E*C*log10(1/(1-Eta)));// in Hz
disp(f,"The pulse repetition frequency in Hz is");
