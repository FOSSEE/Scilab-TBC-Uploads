// Exa 5.21
clc;
clear;
close;
// Given data
f_N = 50;// in Hz
C = 0.47;// in µF
C = C * 10^-6;// in F
R = 1/(2*%pi*f_N*C);// in ohm
R = R * 10^-3;// in k ohm
disp(R,"Resistance in k ohm is");
