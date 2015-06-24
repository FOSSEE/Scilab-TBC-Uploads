// Exa 6.28
clc;
clear;
close;
// Given data
R2 = 1;// in M ohm
R2 = R2 * 10^6;// in ohm
R1 = 1.5;// in M ohm
R1 = R1 * 10^6;// in ohm
V_DD = 25;// in V
V_G = (R2*V_DD)/(R1+R2);// in V
R_S = 22;// in kohm
R_S = R_S * 10^3;// in ohm
I_D = V_G/R_S;// in A
disp(I_D*10^3,"The drain current in mA is ");
R_D = 10;// in  kohm
R_D = R_D * 10^3;// in ohm
V_D = V_DD - (I_D*R_D);//in V
V_S = 10;// in V
V_DS = V_D - V_S;// in V
disp(V_DS,"The Drain source voltage in V is");
disp("Thus the Q-point is : "+string(V_DS)+" V, "+string(I_D*10^3)+" mA")
I_Dsat = V_DD/R_D;// in A
V_DS = V_DD;// in V
V_D= 0:0.1:25;// in V
I_D= (V_DD-V_D)/R_D*10^3;// in mA
plot(V_D,I_D);
xlabel("V_DS in volts");
ylabel("I_D in mA");
title("DC load line");
disp("DC load line shown in figure")

