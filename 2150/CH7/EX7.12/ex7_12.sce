// Exa 7.12
clc;
clear;
close;
// Given data
I_D = 500;// in mA
V_GS = 3;// in V
R_DS = 2;// in ohm
V_DD = 20;// in V
R1 = 1;// in kohm
R1 = R1 * 10^3;// in ohm
V_out = (R_DS/(R1+R_DS))*V_DD;// in V
disp(V_out,"The output voltage in V is");
