// Exa 2.21
clc;
clear;
close;
format('v',6)
// Given data
R1 = 4;// in ohm
R2 = 3;// in  ohm
R3 = 2;// in ohm
R_L = 5;// in ohm
V = 15;// in V
I2 = 6;// in A
// -R1*I1 - R3*I1 + R3*I2 + V = 0;
I1 = (V+R3*I2)/(R1+R3);// in A
Vth = I2/R3;// in V
V_CD = Vth;// in V
Rth = (R1*R3)/(R1+R3)+R2;// in ohm
I = Vth/(Rth+R_L);// in A
disp(I,"The current flowing through 5 ohm resistor in A is");
