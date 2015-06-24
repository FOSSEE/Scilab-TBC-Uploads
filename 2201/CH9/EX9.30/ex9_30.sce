// Exa 9.30
clc;
clear;
close;
// Given data
I_DD= 20;// in mA
R2 = 10;// in k ohm
R1 = 30;// in k ohm
R_S= 1.2;// in k ohm
R_D= 500*10^-3;// in k ohm
V_DD = 12;// in V
Vp= -6;// in V
V_G = (R2/(R2+R1))*V_DD;// in V
I_D= poly(0,'I_D')
V_GS= V_G-I_D*R_S;// in V
I_D=I_D-I_DD*(1-V_GS/Vp)^2;
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
V_DS= V_DD-I_D*(R_D+R_S);// in V
V_D= V_DD-I_D*R_D;// in V
V_S= V_D-V_DS;// in V
disp(I_D,"The value of I_D in mA is : ")
disp(V_DS,"The value of V_DS in volts is : ")
disp(V_D,"The value of V_D in volts is : ")
disp(V_S,"The value of V_S in volts is : ")


