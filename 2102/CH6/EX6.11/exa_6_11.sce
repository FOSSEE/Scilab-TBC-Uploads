// Exa 6.11
clc;
clear;
close;
// Given data
I_DSS= 10;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -4;// in V
V_GS= -2;// in V
I_DS= I_DSS*(1-V_GS/V_P)^2;// in A
V_DS= V_P;// in V
V_DSmin= V_P;// in volt
disp(I_DS*10^3,"The value of I_DS in mA is : ")
disp(V_DSmin,"The minimum value of V_DS in volts is : ")
