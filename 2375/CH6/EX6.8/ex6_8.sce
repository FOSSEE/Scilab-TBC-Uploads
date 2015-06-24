// Exa 6.8
clc;
clear;
close;
format('v',6)
// Given data
Vt = -2;// in V
KnwByL = 2*10^-3;// in A/V^2
V_GS = 1;// in V
V_DS = V_GS-Vt;// in V
disp(V_DS,"The minimum value of V_DS in V is");
i_D = 1/2*KnwByL*V_DS^2;// in A
i_D = i_D * 10^3;// in mA
disp(i_D,"The value of i_D in mA is");
