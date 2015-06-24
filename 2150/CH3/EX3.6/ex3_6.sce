// Exa 3.6
clc;
clear;
close;
// Given data
R_L = 1.2;// in K ohm
R_L = R_L * 10^3;// in ohm
V_i = 16;// in V
R_i = 1;// in K ohm
R_i = R_i * 10^3;// in ohm
V = (R_L * V_i)/(R_L + R_i);// in V
V_L = V;// in V
disp(V_L,"The load voltage in V is");
V_R = V_i - V_L;// in V
disp(V_R,"The voltage in V is");
I_Z = 0;// A
disp(I_Z,"The zener diode current in A is");
V_Z = 10;// in V
P_Z = V_Z*I_Z;// in W
disp(P_Z,"Power dissipation in watt is");
