// Exa 6.17
clc;
clear;
close;
// Given data
I_DSS= 8.7;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -3;// in V
V_GS= -1;// in V
I_DS= I_DSS*(1-V_GS/V_P)^2;// in A
disp(I_DS*10^3,"The value of I_DS in mA is : ")
gmo= -2*I_DSS/V_P*1000;// ms
gm= gmo*(1-V_GS/V_P); // in ms
disp(gmo,"The value of gmo in ms is")
disp(gm,"The value of gm in ms is")

