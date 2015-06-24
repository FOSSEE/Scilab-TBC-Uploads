//Exa 4.10
clc;
clear;
close;
// Given data
Eta = 1;
T = 125;// in °C
T = T + 273;// in K
V_T = 8.62 * 10^-5 * 398;// in V
I_o = 30;// in µA
I_o= I_o*10^-6;// in A
v = 0.2;// in V
r_f = (Eta * V_T)/(I_o * %e^(v/(Eta* V_T)));// in ohm
disp(r_f,"The dynamic resistance in the forward direction in ohm is ");
r_r = (Eta * V_T)/(I_o * %e^(-v/(Eta* V_T)));// in ohm
disp(r_r*10^-3,"The dynamic resistance in the reverse direction in kohm is");
