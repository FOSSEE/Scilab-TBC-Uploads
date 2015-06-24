// Exa 10.9
clc;
clear;
close;
format('v',6)
// Given data
V = 440;// in V
I = 80;// in A
Rse = 0.025;// in ohm
Ra = 0.1;// in ohm
Bd = 2;// brush drop in V
Ia = I;// in A
Ise = I;// in A
Eb = V - (Ia*(Ra+Rse)) - Bd;// in V
disp(Eb,"The back emf in V is");
