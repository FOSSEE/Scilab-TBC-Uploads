// Exa 7.9
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 8;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -4;// in V
V_DD = 16;// in V
R2 = 270;// in k ohm
R2 = R2 * 10^3;// in ohm
R1 = 2.1;// in Mohm
R1 = R1 * 10^6;// in ohm
R_S = 1.5;// in k ohm
R_S = R_S * 10^3;// in ohm
R_D = 2.4;// in k ohm
R_D = R_D * 10^3;// in ohm
V_G = (R2*V_DD)/(R1+R2);// in V
//V_GS = V_G - (I_D*R_S);
V_GS = V_G;// in V (at I_D=0 A)
I_D = V_G/R_S;// in A (at V_GS=0 V)
I_D = I_D * 10^3;// in mA
I_DQ = 2.4;// in mA
V_GSQ = -1.8;// in V
V_D = V_DD - (I_DQ*10^-3*R_D);// in V
V_S = I_DQ*10^-3*R_S;// in V
V_DS = V_DD - (I_DQ*10^-3*(R_S+R_D));// in V
V_DG = V_D-V_G;// in V
disp(I_DQ,"The value of I_DQ in mA is");
disp(V_GSQ,"The value of V_GSQ in V is");
disp(V_D,"The value of V_D in V is");
disp(V_S,"The value of V_S in V is");
disp(V_DS,"The value of V_DS in V is");
disp(V_DG,"The value of V_DG in V is");
