// Exa 1.26
clc;
clear;
close;
// Given data
V1 = 10;// in V
V2 = 0.7;// in V
R1 = 1*10^3;// in ohm
R2 = 2*10^3;// in ohm
I = (V1-V2)/(R1+R2);// in A
V_o = I * R2;// in V
disp(V_o,"The output voltage in V is");
I_D = I/2;// in A
disp(I_D*10^3,"The diode current in mA is");
