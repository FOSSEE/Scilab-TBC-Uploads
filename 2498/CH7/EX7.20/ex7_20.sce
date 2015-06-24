// Exa 7.20
clc;
clear;
close;
format('v',6)
// Given data
V_DD = -60;// in V
R1 = 1.3;// in Mohm
R1 = R1 * 10^3;// in ohm
R2 = 200;// in k ohm
I_DSS = -4;// in mA
V_P = 4;// in V
R_S= 4;// in k ohm
R_D= 18;// in k ohm
V_GG = V_DD * (R2/(R1+R2));// in V
R_G = (R2*R1)/(R1+R2);// in k ohm
V_G = -8;// in V
I_D= poly(0,'I_D');
V_S= I_D*R_S;// in V
V_GS= V_G-V_S;// in V
I_D= I_D-I_DSS*(1-V_GS/V_P)^2;
// Evaluating the value of I_D by using, polynomial method,
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
V_S= I_D*R_S;// in V
V_GS= V_G-V_S;// in V
V_DS= V_DD-I_D*(R_D+R_S);// in V
disp(I_D,"The value of I_D in mA is : ")
disp(V_GS,"The value of V_GS in volts is: ")
disp(V_DS,"The value of V_DS in volts is : ")
