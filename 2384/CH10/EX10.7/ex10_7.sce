// Exa 10.7
clc;
clear;
close;
format('v',8)
// Given data
P = 60;
A =P;
Vbrush = 2;// in V/brush
Vt = 100;// in V
Ra = 0.1;// in ohm
Rsh = 80;// in ohm
Ish = Vt/Rsh;// in A
Ilamp = P/Vt;// in A
I_L = 50*Ilamp;// in A
// Armature current
Ia = I_L+Ish;// in A
disp(Ia,"The total armature current in A is");
// Evaluation of generated emf
Eg = Vt + (Ia*Ra) + Vbrush;// in V
disp(Eg,"The generated emf in V is");
