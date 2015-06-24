// Exa 8.2
clc;
clear;
close;
format('v',6)
// Given data
V_DD= 20;// in V
V_GS = 0;// in V
I_DSS = 10;// in mA
I_P = I_DSS;// in mA
I_D = I_DSS;// in mA
R_D = 1.5;// in k ohm
// The drain to source voltage,
V_DS = V_DD - (I_D*R_D);// in V
disp(V_DS,"The value of V_DS in V is");
