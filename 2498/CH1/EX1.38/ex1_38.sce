// Exa 1.38
clc;
clear;
close;
format('v',6)
// Given data
R1 = 1;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 2;// in k ohm
R2 = R2 * 10^3;// in ohm
V = 10;// in V
V1 = 0.7;// in V 
// V * (I_D*R1) - (R2*I_D) - V1 = 0;
I_D = (V-V1)/(R1+R2);// in A
I_D = I_D * 10^3;// in mA
disp(I_D,"The value of I_D in mA is");
// The output voltage,
Vo = (I_D*10^-3 * R2) +V1;// in V
disp(Vo,"The value of Vo in V is");
