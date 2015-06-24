// Exa 10.16
clc;
clear;
close;
format('v',6)
// Given data
P_L = 20;// in kW
P_L = P_L * 10^3;// in W
V = 200;// in V
Ra = 0.05;// in ohm
Rsh = 200;// in ohm
// P_L = V*I_L;
I_L = P_L/V;// in A
Ish = V/Rsh;// in A
Ia = I_L+Ish;// in A
Eg = V + (Ia*Ra);// in V
Pa = Eg*Ia;// in W
Pa = Pa * 10^-3;// in kW
disp(Pa,"The power developed in armature in kW is");
