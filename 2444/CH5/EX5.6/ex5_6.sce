// Exa 5.6
clc;
clear;
close;
format('v',6)
// Given data
V_DD = 10;// in V
Cds = 0.5*10^-12;// in F
Cgs = 5*10^-12;// in F
Cgd = 4*10^-12;// in F
R_D = 2*10^3;// in ohm
I_DSS = 10*10^-3;// in A
V_P = -4;// in V
V_GSQ = -2;// in V
g_mo = (-2*I_DSS)/V_P;// in S
g_m = g_mo * (1-(V_GSQ/V_P));// in S
Av = -R_D*g_m;// circuit mid-frequency gain
// Miller capacitance
C_M = (1-Av)*Cgd;// in F
C_M= C_M*10^12;// in pF
disp(C_M,"The miller capacitance in pF is");
