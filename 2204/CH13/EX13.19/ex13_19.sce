// Exa 13.19
clc;
clear;
close;
// Given data
C = 0.02;// in µF
C = C * 10^-6;// in F
f=2*10^3;//frequency in Hz
T = 1/f;// in sec
n = 5;
t_p = (0.2+(n-1))*T;// in sec
R_A = t_p/(1.1*C);// in ohm
disp(R_A*10^-3,"The value of R_A in kΩ is");
