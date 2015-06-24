// Exa 9.24
clc;
clear;
close;
// Given data
kn= 0.5;// in mA/V^2
V_T= 1;// in V
R2 = 40;// in k ohm
R1 = 60;// in k ohm
R_S= 1;// in k ohm
R_D= 2;// in k ohm
V_DD = 5;// in V
V_SS = -5;// in V
V_R2 = (R2/(R2+R1))*(V_DD-V_SS);// in V
V_G = V_R2 - V_DD;// in V
I_D= poly(0,'I_D');
V_S= I_D*R_S+V_SS;// in V
V_GS= V_G-V_S;// in V
I_D=I_D-kn*(V_GS-V_T)^2;// in mA
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
I_DQ= I_D;// in mA
V_S= I_D*R_S+V_SS;// in V
V_GS= V_G-V_S;// in V
V_DSQ= V_DD-V_SS-I_D*(R_D+R_S);// in V
disp(I_DQ,"The value of I_DQ in mA is : ")
disp(V_GS,"The value of V_GS in volts is : ")
disp(V_DSQ,"The value of V_DSQ in volts is : ")

