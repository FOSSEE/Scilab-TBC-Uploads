// Exa 2.21
clc;
clear;
close;
// Given data
V_m = 50;// in V
r_f = 20;// in ohm
R_L = 800;// in ohm
I_m = V_m/(R_L+r_f);// in A
I_m = I_m * 10^3;// in mA
disp(round(I_m),"The value of Im in mA is");
I_dc = I_m/%pi;// in mA
disp(I_dc,"The value of I_dc in mA is");
I_rms = I_m/2;// in mA
disp(I_rms,"The value of Irms in mA is");
P_ac = (I_rms * 10^-3)^2 * (r_f + R_L);// in Watt
disp(P_ac,"AC power input in Watt is");
V_dc = I_dc * 10^-3*R_L;// in V
disp(V_dc,"DC output voltage in V is");
P_dc = (I_dc * 10^-3)^2 * (r_f + R_L);// in Watt
Eta = (P_dc/P_ac)*100;// in %
disp(Eta,"The efficiency of rectification in % is");

// Note: There is calculation error to evaluate the ac power input (i.e. P_ac), so the value of Eta is also wrong
