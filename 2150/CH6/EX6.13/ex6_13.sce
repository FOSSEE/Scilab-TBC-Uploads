// Exa 6.13
clc;
clear;
close;
// Given data
V_S = 1.7;// in V
R_S = 0.51;// in kohm
R_S= R_S*10^3;// in ohm
V_DD = 18;// in V
R_D = 2*10^3;// in ohm
V_GS = -1.7;// in V
V_P = - 4.5;// in V
I_DQ = V_S/R_S;//in A
disp(I_DQ*10^3,"The value of I_DQ in mA is");
V_GSQ = -V_S;// in V
disp(V_GSQ,"The value of V_GSQ in V is");
I_DSS = I_DQ/( (1-(V_GS/V_P))^2 );// in A
disp(I_DSS*10^3,"The value of I_DSS in mA is");
V_D = V_DD - (I_DQ*R_D);// in V
disp(V_D,"The value of V_D in V is");
V_DS = V_D-V_S;// in V
disp(V_DS,"The value of V_DS in V is");
