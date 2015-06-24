// Exa 10.11
clc;
clear;
close;
format('v',6)
// Given data
P = 4;
A = 2;//(wave connected)
Z = 200;
V=250;// in V
phi = 25;// in mWb
phi = phi * 10^-3;// in Wb
Ia = 60;// in A
I_L = 60;// in A
Ra = 0.15;// in ohm
Rse = 0.2;// in ohm
//V = Eb + (Ia*Ra) + (Ia*Rse);
Eb = V - (Ia*Ra) - (Ia*Rse);// in V
// Eb = (phi*P*N*Z)/(60*A);
N = (Eb*60*A)/(phi*P*Z);// in rpm
disp(N,"The speed in rpm is");
