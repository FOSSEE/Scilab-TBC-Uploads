// Exa 1.31
clc;
clear;
close;
format('v',6)
// Given data
R = 1;// in ohm
V = 5;// in V
V1 = 0.5;// in V
R1 = 1;// in k ohm
R1 = R1 * 10^3;// in ohm
// V-(I_D*R1)-(I_D*R) - V1 = 0;
I_D = (V-V1)/(R1+R);// in A
I_D = I_D * 10^3;// in mA
V_D = (I_D*10^-3*R) + V1;// in V
disp("The operating point of the diode is : "+string(V_D)+" V, "+string(I_D)+" mA")
