// Exa 7.4
clc;
clear;
close;
format('v',6)
// Given data
V_DD = 30;// in V
R_D = 5;// in k ohm
R_D = R_D * 10^3;// in ohm
I_D = 2.5;// in mA
I_D = I_D * 10^-3;// in A
R_S = 200;// in ohm
// V_DD = (I_D*R_D) + V_DS + (I_D*R_S);
V_DS = V_DD - (I_D*(R_D+R_S));// in V
disp(V_DS,"The value of V_DS in V is");
// The value of V_GS 
V_GS = -I_D*R_S;// in V
disp(V_GS,"The value of V_GS in V is");
