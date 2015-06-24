// Exa 7.2
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 10;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -4;// in V
V_DD= 20;// in V
R_S = 1;// in k ohm
R_S = R_S * 10^3;// in ohm
R_D = 2.7;// in k ohm
R_D = R_D * 10^3;// in ohm
I_DQ= poly(0,'I_DQ');
V_GS= -I_DQ*R_S;// in V
I_DQ= I_DQ-I_DSS*(1-V_GS/V_P)^2;// in A
I_DQ= roots(I_DQ);// in A
I_DQ= I_DQ(2);// in A
I_DQ= I_DQ*10^3;// in mA
disp(I_DQ,"The value of I_DQ in mA is : ")
I_DQ= I_DQ*10^-3;// in A
V_GSQ= -I_DQ*R_S;// in V
disp(V_GSQ,"The value of V_GSQ in volts is : ")
V_DS= V_DD-I_DQ*(R_D+R_S);// in V
disp(V_DS,"The value of V_DS in volts is : ")
