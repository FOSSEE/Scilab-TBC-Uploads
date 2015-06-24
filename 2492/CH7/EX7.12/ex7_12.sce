// Exa 7.12
format('v',9)
clc;
clear;
close;
// Given data
R1 = 10;// in k ohm
Rf = 30;// in k ohm
Vs = 4;// in V
V_A = 2;// in V
V_B = 2;// in V
I = (Vs-V_B)/(R1);// in mA
Vo = (-I*Rf)+V_B;// in V
// The output voltage,
disp(Vo,"The value of Vo in V is");
