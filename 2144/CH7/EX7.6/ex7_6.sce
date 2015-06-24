// Exa 7.6
clc;
clear;
close;
// Given data
h_f1 = 2584;// in kJ/kg
h_fg1 = 2392;// in kJ/kg
H2 = 192;// in kJ/kg
x = 0.2;
H1 = round(h_f1- (x*h_fg1));// in kJ/kg
x1 = 0.8;
Vs = 14.67;// in m^3
V1 = x1*Vs;// in m^3/kg
A = 0.45;// in m^2
C1 = V1/A;// in m/s
Q = 5;// kJ/s
C2 = 0;
W = 0;
Q_desh = W-H1 - C1^2/(2*1000)-Q+H2+C2^2/2;// in kJ/s
disp(Q_desh,"Rate of heat transfer in kJ/s is");

