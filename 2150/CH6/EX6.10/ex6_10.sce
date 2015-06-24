// Exa 6.10
clc;
clear;
close;
// Given data
I_DSS = 4;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P = -4;// in V
V_GG = -2;// in V
V_GS = V_GG;// in V
disp(V_GS,"The value of V_GS in V is");
I_D = I_DSS*(1-(V_GS/V_P))^2;// in A
disp(I_D*10^3,"The value of I_D in mA is");
V_DD = 10;// in V
R_D = 5;// in kohm
R_D = R_D * 10^3;// in ohm
V_DS = V_DD - (I_D*R_D);// in V
disp(V_DS,"The value of V_DS in V is");
