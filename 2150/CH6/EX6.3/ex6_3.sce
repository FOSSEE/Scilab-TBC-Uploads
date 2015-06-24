// Exa 6.3
clc;
clear;
close;
// Given data
R2 = 1;// in M ohm
R2 = R2*10^6;// in ohm
R1 = 2;// in M ohm
R1 = R1*10^6;// in ohm
V_DD = 30;// in V
R_D= 1*10^3;// in ohm
V_G = (R2/(R1+R2))*V_DD;// in V
R_S= 2*10^3;// in ohm
I_D= V_G/R_S;// in A
V_D= V_DD-I_D*R_D;// in V
V_DS= V_D-V_G;// in V
R_D= R_D+R_S;// in ohm
I_Dsat=V_DD/R_D*10^3;// in mA
disp(I_D*10^3,"The value of I_D in mA is : ")
disp(V_DS,"The value of V_DS in volts is : ")
disp("Thus the Q-point is "+string(V_DS)+" V, "+string(I_D*10^3)+" mA")
disp("DC load line shown in figure")
V_D= 0:0.1:V_DD;// in V
I_D= (V_DD-V_D)/R_D*10^3;// in mV
plot(V_D,I_D);
ylabel("I_D in mA");
xlabel("V_DS in volts");
title("DC load line")
