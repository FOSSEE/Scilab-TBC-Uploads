// Exa 8.6
clc;
clear;
close;
format('v',6)
// Given data
V_DD = 10;// in V
R_D = 5.1;// in  k ohm
R_D = R_D * 10^3;// in ohm
g_m = 2*10^-3;// in S
r_d = 50;// in k ohm
r_d = r_d * 10^3;// in ohm
Vi = 0;// in V
R_G = 1;// in Mohm
R_G = R_G * 10^6;// in ohm
// (i) Input impedance
Zi = R_G;// in ohm
Zi= Zi*10^-6;// in M ohm
disp(Zi,"The input impedance in Mohm is");
// (ii) Output impedance
Zo = (r_d*R_D)/(r_d+R_D);// in ohm
disp(Zo,"The output impedance in ohm is");
// (iii) Voltage gain
Av = -g_m*Zo;
disp(Av,"The voltage gain is");
