// Exa 10.10
clc;
clear;
close;
format('v',7)
// Given data
V = 250;// in V
I_L = 20;// in A
Ra = 0.3;// in ohm
Rsh = 200;// in ohm
Ish = V/Rsh;// in A
// I_L = Ia+Ish;
Ia = I_L-Ish;// inA
disp(Ia,"The armature current in A is");
Eb = V-(Ia*Ra);// in V
disp(Eb,"The back emf in V is");
