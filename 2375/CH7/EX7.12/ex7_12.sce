// Exa 7.12
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 12;// in mA
V_P = 5;// in V
R_D = 3.3;// in k ohm
R_G = 1.5*10^3;// in k ohm
R_S = 1.2;// in k ohm
V_DD= 18;// in V
I_D= poly(0,'I_D');
V_GS= I_D*R_S;// in V
I_D= I_D-I_DSS*(1-V_GS/V_P)^2;
I_D= roots(I_D);
I_D= I_D(2);// in mA
V_GS= I_D*R_S;// in V
V_DS= V_DD-I_D*(R_S+R_D);// in V
disp(I_D,"The value of I_D in mA is : ")
disp(V_GS,"The value of V_GS in volts is : ");
disp(V_DS,"The value of V_DS in volts is : ")
