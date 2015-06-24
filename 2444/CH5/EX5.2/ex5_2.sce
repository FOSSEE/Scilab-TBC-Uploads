// Exa 5.2
clc;
clear;
close;
format('v',6)
// Given data
C =0.15;// in µF
C = C * 10^-6;// in F
R = 7.5;// in k ohm
R = R * 10^3;// in ohm
f1 = 1/(2*%pi*R*C);// in Hz
disp(f1,"The cutoff frequency in Hz is");
