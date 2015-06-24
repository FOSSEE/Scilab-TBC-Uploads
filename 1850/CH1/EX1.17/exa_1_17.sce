// Exa 1.17
clc;
clear;
close;
// Given data
V_BE=0.7;// in volt
V_Z= 1.8;// in volt
R_E=1;// in k ohm
Bita=180;
//V_Z-V_BE-V_B=0
V_B= V_Z-V_BE;// in volt
I_E= V_B/R_E;// in mA
I= Bita/(Bita+1)*I_E;// in mA
disp(I,"Current in mA")
