// Exa 6.1
format('v',7);
clc;
clear;
close;
// Given data
Vf= 0.0125;// in volt
Vo= 0.5;// in volt
Bita= Vf/Vo;
// For oscillator A*Bita= 1
A= 1/Bita;
disp("Amplifier Should have a minimum gain of "+string(A)+" to provide oscillation")
