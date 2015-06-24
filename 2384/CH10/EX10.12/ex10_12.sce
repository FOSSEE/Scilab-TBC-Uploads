// Exa 10.12
clc;
clear;
close;
format('v',6)
// Given data
Eb = 227;// in V
Rsh = 160;// in ohm
Ish = 1.5;// in A
I_L = 39.5;// in A
V = Ish*Rsh;// in V
Ia = I_L-Ish;// in A
//V = Eb + (Ia*Ra);
Ra = (V-Eb)/Ia;// in ohm
disp(Ra,"The armature resistance in ohm is");
Ia = V/Ra;// in A
disp(Ia,"The armature current in A is");
