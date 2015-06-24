// Exa 8.13
clc;
clear;
close;
// Given data
I_DSS = 8;// in mA
V_P = -4;// in V
a = 3*10^-4;// in cm
N_D = 10^15;// in electrons/cm^3
I_D = 3;// in mA
V_GS = V_P*( 1-sqrt(I_D/I_DSS) );// in V
disp(V_GS,"The value of V_GS in V is");
V_DS_sat = V_GS-V_P;// in V
disp(V_DS_sat,"The value of V_DS_sat in V is");
