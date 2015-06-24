// Exa 7.1
clc;
clear;
close;
// Given data
Vout = 5;// in V
V = 1.5;//ON state voltage drop across LED in V
I = 5;// in mA
I = I*10^-3;// in A
R = (Vout-V)/I;// in ohm
disp(R,"Resistance in ohm is");
