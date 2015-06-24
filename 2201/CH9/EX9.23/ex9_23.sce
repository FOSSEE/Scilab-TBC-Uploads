// Exa 9.23
clc;
clear;
close;
// Given data
V_DD= 12;// in V
V_T= 2;// in V
kn= 0.5;// in mA/V^2
R1 = 2.2;// in M ohm
R2 = 1.8;// in M ohm
R_S= 1.5;// in kΩ
R_D= 3.9;// in kΩ
V_G = (R2/(R1+R2))*V_DD;// in V
I_D= poly(0,'I_D')
V_GS= V_G-I_D*R_S;// V
I_D= I_D-kn*(V_GS-V_T)^2;// in mA
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
I_DQ= I_D;// in mA
V_DSQ= V_DD-I_D*(R_D+R_S);// in V
disp(I_DQ,"The value of I_DQ in mA is : ")
disp(V_DSQ,"The value of V_DSQ in volts is : ")
V_GS= V_G-I_D*R_S;// V
V_DSsat= V_GS-V_T;// in V
disp("The value of  V_DS ( "+string(V_DSQ)+" V ) is greater than the value of ")
disp("V_DSsat ( "+string(V_DSsat)+" V ), So the MOSFET is in saturation region")
