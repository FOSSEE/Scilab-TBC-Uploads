// Exa 6.4
clc;
clear;
close;
// Given data
I_DSS= -40;// in mA
I_DSS=I_DSS*10^-3;// in A
V_P= 5;// in V
I_D= -15;// in mA
I_D=I_D*10^-3;// in A
// Formula I_D= I_DSS*(1+V_GS/V_P)
V_GS= (sqrt(I_D/I_DSS)-1)*V_P;// in volt
disp(V_GS,"The value of V_GS in volts is : ")
