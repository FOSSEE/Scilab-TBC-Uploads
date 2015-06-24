// Exa 1.17
clc;
clear;
close;
// Given data
V1 = 0.7;// in V
V2 = 5;// in V
V_o = V1-V2;// in V
R = 2.2*10^3;// in ohm
I_D = -V_o/R;
I_D = I_D * 10^3;// in mA
disp(V_o,"The output voltage in volts is : ")
disp(I_D,"The current through diode in mA is");
