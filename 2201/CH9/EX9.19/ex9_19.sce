// Exa 9.19
clc;
clear;
close;
// Given data
R2 = 20;// in  k ohm
R1 = 30;// in  k ohm
R_D = 20;// in  k ohm
R_D=R_D*10^3;// in ohm
V_DD = 5;// in V
V_G = (R2/(R1+R2))*V_DD;// in V
V_S = 0;// in V
V_GS = V_G;// in V
k = 100*10^-6;// in A/V^2
V_T = 1;// in V
I_DQ = k*((V_GS-V_T)^2);// in A
disp(I_DQ * 10^6,"The value of I_DQ in µA is");
//R_D =R_D * 140^3;// in ohm
V_DSQ = V_DD - (I_DQ*R_D);// in V 
disp(V_DSQ,"The value of V_DSQ in V is");
