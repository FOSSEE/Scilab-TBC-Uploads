// Exa 4.23
clc;
clear;
close;
format('v',5)
// Given data
V_GS = -1.0;// in V
V_DS = 4.0;// in V
I_DS = 1;// in mA
I_DS = I_DS * 10^-3;// in A
I_G = 0;// in A
R_G = 500;// in k ohm
R_G = R_G * 10^3;// in ohm
V_DD = 10;// in V
V_DS = 4;// in V
V_G = I_G*R_G;// in V
Vs = V_G-V_GS;// in V
R_S = Vs/I_DS;// in ohm
R_S= R_S*10^-3;// in k ohm
disp(R_S,"The value of R_S in k ohm is");
R_S= R_S*10^3;// in ohm
// V_DD = I_DD*R_D + V_DS+ I_DS*R_S = I_DS*(R_D+R_S) + V_DS
R_D = ((V_DD-V_DS)/I_DS)-R_S;// in ohm
R_D = R_D * 10^-3;// in k ohm
disp(R_D,"The value of R_D in k ohm is");
