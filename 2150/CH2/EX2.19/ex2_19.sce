// Exa 2.19
clc;
clear;
close;
// Given data
V_Gamma = 0.7;// in V
R_f = 0;// in ohm
V_rms = 120;// in V
V_max = sqrt(2)*V_rms;// in V
R_L = 1;// in K ohm
R_L = R_L * 10^3;// in ohm
I_max = (V_max - (2*V_Gamma))/R_L;// in A
I_dc = (2*I_max)/%pi;// in mA
V_dc = I_dc * R_L;// in V
disp(V_dc,"The dc voltage available at the load in V is");
PIV = V_max;// in V
disp(PIV,"Peak inverse voltage in V is");
disp(I_max*10^3,"Maximum current through diode in mA is : ")
P_max = V_Gamma * I_max;// in W
disp(P_max*10^3,"Diode power rating in mW is");
