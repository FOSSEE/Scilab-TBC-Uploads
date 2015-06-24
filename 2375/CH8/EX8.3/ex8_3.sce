// Exa 8.3
clc;
clear;
close;
format('v',6)
// Given data
V_DD = 20;// inV
I_DSS = 8;// in mA
I_DSS = I_DSS * 10^-3;// in mA
V_P = -6;// in V
R_G = 1;// in Mohm
R_G = R_G * 10^6;// in ohm
R_S = 1;// in k ohm
R_S = R_S * 10^3;// in ohm
r_d = 50;// in k ohm
r_d = r_d * 10^3;// in ohm
V_GS = -2.6;// in V
I_D = 2.6;// in mA
I_D = I_D * 10^-3;// in A
g_mo = (2*I_DSS)/(abs(V_P));// in S
g_m = g_mo*(1 - (V_GS/V_P));// in S
Zi = R_G;// in ohm
Zi= Zi*10^-6;// in M ohm
disp(Zi,"The value of Zi in M ohm is");
Zo = R_S*1/g_m/(R_S+1/g_m);
disp(Zo,"The value of Zo is");
Av = g_m*R_S/(1 + (g_m*R_S));
disp(Av,"The value of Av is");
