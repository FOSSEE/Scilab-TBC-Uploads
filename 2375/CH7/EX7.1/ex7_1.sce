// Exa 7.1
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 8;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -8;// in V
V_DD = 16;// in V
R_D = 2;// in k ohm
R_D = R_D * 10^3;// in ohm
V_GG = 2;// in V
R_G = 1;// in Mohm
R_G = R_G * 10^6;// in ohm
I_G = 0;
// To calculate V_GS
V_GS = -V_GG;// in V
disp(V_GS,"The value of V_GS in V is");
// To calculate the drain current
I_DQ =I_DSS*((1 - (V_GS/V_P))^2);// in A
I_DQ = I_DQ * 10^3;// in mA
disp(I_DQ,"The value of I_DQ in mA is");
// To calculate V_DS
// V_DD = I_D*R_D + V_DS;
V_DS = V_DD - (I_DQ*10^-3*R_D);// in V
disp(V_DS,"The value of V_DS in V is");
