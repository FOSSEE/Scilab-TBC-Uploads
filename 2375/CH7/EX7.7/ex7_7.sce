// Exa 7.7
clc;
clear;
close;
format('v',5)
// Given data
V_D = 12;// in V
V_GSQ = -2;// in V
V_DD = 16;// in V
R1 = 47;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 91;// in k ohm
R2 = R2 * 10^3;// in ohm
V_G = (R1*V_DD)/(R1+R2);// in V 
R_D = 1.8;// in k ohm
R_D = R_D * 10^3;// in ohm
I_D = (V_DD-V_D)/R_D;// in A
I_D = I_D * 10^3;// in mA
// V_GS = V_G - (I_D*R_S);
R_S = (V_G-V_GSQ)/(I_D*10^-3);// in ohm
R_S = R_S * 10^-3;// in k ohm
disp(R_S,"The value of R_S in k ohm is");
