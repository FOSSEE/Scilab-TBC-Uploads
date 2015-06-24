// Exa 6.20
clc;
clear;
close;
// Given data
Q2 = 10^5;// in kJ/hr
T1 = -3;// in °C
T1 = T1 + 273;// in K
T2 = 22;// in °C
T2 = T2 + 273;// in K
COP_heat = 1/(1-T1/T2);
W = Q2/COP_heat;// in kJ/hr
W = W/3600;// in kW
disp(W,"Minimum power required in kW is");
