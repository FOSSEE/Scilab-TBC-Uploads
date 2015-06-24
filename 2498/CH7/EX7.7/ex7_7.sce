// Exa 7.7
clc;
clear;
close;
format('v',6)
// Given data
I_DSS =10;// in mA
V_P = -8;// in V
V_GG = 2;// in V
V_GS = -V_GG;// in V
V_DD = 16;// in V
R_D = 2;// in k ohm
R_D = R_D * 10^3;// in ohm
disp(V_GS,"The value of V_GS in V is");
// Part (b)
// The value of I_DQ 
I_DQ = I_DSS * (1-V_GS/V_P)^2;// in mA
disp(I_DQ,"The value of I_DQ in mA is");
// Part (c)
// The value of V_DS 
V_DS = V_DD - (I_DQ*10^-3*R_D);// in V
disp(V_DS,"The value of V_DS in V is");
// Part (d)
// The value of V_D 
V_D = V_DS;// in V
disp(V_D,"The value of V_D in V is");
// Part (e)
// The value of V_G 
V_G = V_GS;// in V
disp(V_G,"The value of V_G in V is");
// Part (f)
// The value of V_S 
V_S = 0;// in V
disp(V_S,"The value of V_S in V is");
