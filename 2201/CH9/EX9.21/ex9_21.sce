// Exa 9.21
clc;
clear;
close;
// Given data
k= 75*10^-3;//in mA/V^2
Vth= -0.8;// in V
R2 = 100;// in k ohm
R1 = 100;// in  k ohm
R_S= 6;// in kΩ
R_D= 3;// in kΩ
V_SS = 10;// in V
V_G = (R2/(R1+R2))*V_SS;// in V
I_D= poly(0,'I_D');
V_S= V_SS-I_D*R_S;// in V
V_GS= V_G-V_S;//in V
I_D= I_D-k*(V_GS-Vth)^2;
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
V_DS= -V_SS+I_D*(R_D+R_S);// in V
V_D= I_D*R_D;// in V
V_S= I_D*R_S;// in V
disp(I_D,"The value of I_D in mA is : ")
disp(V_DS,"The value of V_DS in volts is : ")
disp(V_D,"The value of V_D in volts is : ")
disp(V_S,"The value of V_S in volts is : ")
