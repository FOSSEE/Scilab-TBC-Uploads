// Exa 2.3
clc;
clear;
close;
// Given data
R1 = 2.2*10^3;// in ohm
R2 = 4.7*10^3;// in ohm
R_AB = (R1*R2)/(R1+R2);// in ohm
Vi = 20;// in V
V_o = (Vi * R_AB)/(R_AB+R1);// in V
PIV= Vi;// in volts
disp(V_o,"The output voltage in V is");
disp(PIV,"Peak inverse voltage in volts is : ")
