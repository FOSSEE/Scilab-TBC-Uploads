// Exa 6.27
clc;
clear;
close;
// Given data
I_DSS= 8;// in mA
V_P= -5;// in V
V_GS= -2;// in V
// Formula V_GS+ V_DSmin = V_P
V_DSmin= abs(V_P-V_GS);// in V
disp(V_DSmin,"The minimum value of V_DS in volts is :")
I_DS= I_DSS*(1-V_GS/V_P)^2;// in mA
disp(I_DS,"The value of I_DS in mA is :")
