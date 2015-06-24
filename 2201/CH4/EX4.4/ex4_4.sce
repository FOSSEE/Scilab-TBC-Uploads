// Exa 4.4
clc;
clear;
close;
// Given data
V = 5;// in V
V_Gamma = 0.6;// in V
r_F = 12;// in ohm
R = 1;// in k ohm
R = R * 10^3;// in ohm
I_F = (V-V_Gamma)/(R+r_F);// in A
disp(I_F*10^3,"The forward diode current in mA is");
V_F = V_Gamma + (I_F*r_F);// in V
disp(V_F,"The diode voltage in V is");
