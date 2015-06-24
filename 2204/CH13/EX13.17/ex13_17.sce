// Exa 13.17
clc;
clear;
close;
// Given data
R_A = 20;// in k ohm
R_A = R_A * 10^3;// in ohm
C = 0.1;// in µF
C = C*10^-6;// in F
pulse_width = 1.1*R_A*C;// in s
disp(pulse_width*10^3,"The output pulse width in ms is");
