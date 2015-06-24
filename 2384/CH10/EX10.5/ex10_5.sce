// Exa 10.5
clc;
clear;
close;
format('v',6)
// Given data
P = 30;// in kW
P = P * 10^3;// in W
V = 300;// in V
Ra = 0.05;// in ohm
Rsh = 100;// in ohm
// p = V*I_L;
I_L = P/V;// in A
Ish = V/Rsh;// in A
Ia = I_L+Ish;// in A
Eg = V + (Ia*Ra);// in V
// power developed by armature 
power = (Eg*Ia);// in W
power = power * 10^-3;// in kW
disp(power,"The total power developed by the armature in kW is");
