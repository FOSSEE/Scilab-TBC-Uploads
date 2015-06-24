// Exa 8.9
clc;
clear;
close;
format('v',7)
// Given data
R1 = 3.3* 10^-3;// in ohm
R2 = 1.2* 10^6;// in ohm
R_D = 3.9* 10^3;// in ohm
R_S = 3.9* 10^3;// in ohm
R_L = 82* 10^3;// in ohm
g_m = 6000* 10^-6;// in S
r_d = 70* 10^3;// in ohm
Zi = (R_S*( (r_d+R_D)/(1+(g_m*r_d)) ))/(R_S+( (r_d+R_D)/(1+(g_m*r_d)) ));// in ohm
disp(Zi,"The input impedance in ohm is");
Zo = (r_d*R_D)/(r_d+R_D);// in ohm
disp(Zo,"The output impedance in ohm is");
R = (R_D*R_L)/(R_D+R_L);// in ohm
Av = (R*(1+(g_m*r_d)))/( r_d+R );
disp(Av,"The voltage gain is");
