// Exa 8.1
clc;
clear;
close;
format('v',6)
// Given data
V_P = -4;// in V
r_d = 40*10^3;// in ohm
I_DSS = 10*10^-3;// in A
V_GG = 1;// in V
R_D = 1.8*10^3;// in ohm
R_G = 1*10^6;// in ohm
g_mo = 2*I_DSS/(abs(V_P));// in S
V_GSQ = -1.5;// in V
g_m = g_mo*(1-(V_GSQ/V_P));// in S
Zi = R_G;// in ohm
Zi= Zi*10^-6;// in M ohm
disp(Zi,"The input impedance in M ohm is");
Zo = (r_d*R_D)/(r_d+R_D);// in ohm
Zo = R_D;// in ohm (as r_d>10*R_D)
Zo= Zo*10^-3;// in k ohm
disp(Zo,"The output impedance in k ohm is");
//Av = Vo/Vi = -g_m*R_D;
Av = -g_m*R_D;
disp(Av,"The voltage gain is");
