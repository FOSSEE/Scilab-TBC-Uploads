// Exa 10.18
clc;
clear;
close;
format('v',6)
// Given data
P = 6;
A = 6;
Z = 500;
Ra = 0.05;// in ohm
Rsh =25;// in ohm
V = 100;// in V
I_L = 120;// in A
phi = 2*10^-2;// in Wb
Ish = V/Rsh;// in A
Ia = I_L-Ish;// in A
Eb = V - (Ia*Ra);// in V
// Eb = (N*P*phi*Z)/(60*A);
N = (Eb*60*A)/(P*phi*Z);// in rpm
disp(N,"The speed of the motor in rpm is");
