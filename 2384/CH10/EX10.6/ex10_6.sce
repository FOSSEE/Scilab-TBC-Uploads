// Exa 10.6
clc;
clear;
close;
format('v',6)
// Given data
V = 200;// in V
Ra = 0.5;// in ohm
Rsh = 200;// in ohm
P = 20;// in kW
P = P * 10^3;// in W
// P = V*I_L;
I_L =P/V;// in A
Ish = V/Rsh;// in A
Ia = I_L+Ish;// in A
Eg = V + (Ia*Ra);// in V
// power developed in the armature 
power = Eg*Ia;// in W
power = power * 10^-3;// in kW
disp(power,"The power developed in the armature in kW is");
