// Exa 6.18
clc;
clear;
close;
// Given data
V_GG = 2;// in V
V_GS = -V_GG;// in V
disp(V_GS,"The value of V_GS in V is");
I_DSS = 10;// in mA
V_P = -8;// in V
I_D = I_DSS*(1-(V_GS/V_P))^2;// in mA
I_DQ= I_D;// in mA
disp(I_DQ,"The value of I_DQ in mA is");
R_D = 2;// in K ohm
V_DD = 16;// in V
V_DS = V_DD - (I_D*R_D);// in V
disp(V_DS,"The value of V_DS in V is");
V_D = V_DS;// in V
disp(V_D,"The value of V_D in V is");
V_G = V_GS;// in V
disp(V_G,"The value of V_G in V is");
V_S = 0;// in V
disp(V_S,"The value of V_S in V is");
