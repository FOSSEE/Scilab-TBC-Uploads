// Exa 6.2
clc;
clear;
close;
// Given data
V_P = 4;// in V
I_DSS = 10;// in mA
I_DSS  =I_DSS  *10^-3;// in A
R_DS = V_P/I_DSS;// in ohm
V_DD = 30;// in V
I_D = 2.5;// in mA
R_D = 2;// in kohm
V_D = V_DD - (I_D*R_D);// in V
disp(V_D,"The drain voltage in V is");
