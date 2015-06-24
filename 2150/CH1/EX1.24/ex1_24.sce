// Exa 1.24
clc;
clear;
close;
// Given data
V_S = 2;// in V
R = 100;// in ohm
I_D = V_S/R;
I_D = I_D * 10^3;// in mA
disp("Part (a)")
disp(I_D,"The diode current in mA is");
V_K = 0.7;// in V
I_D1 = (V_S-V_K)/R;
I_D1 = I_D1*10^3;// in mA
disp("Part (b)")
disp(I_D1,"The diode current in mA is");
R_f = 30;// in ohm
I_D2 = (V_S - V_K)/(R+R_f);
I_D2 = I_D2 * 10^3;// in mA
disp("Part (c)")
disp(I_D2,"The diode current in mA is");

