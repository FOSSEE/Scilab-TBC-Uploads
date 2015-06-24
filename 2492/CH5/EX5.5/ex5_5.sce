// Exa 5.5
format('v',7)
clc;
clear;
close;
// Given data
Ri = 1;// in k ohm
Ro = 80;// in k ohm
Aiint = 150;
R_S = 5;// in k ohm
R_L = 1;// in k ohm
//Aiext = i1/i2 = (R_S/(R_S+Ri)) * (Ro/(Ro+R_L))*Aiint;
Aiext = (R_S/(R_S+Ri)) * (Ro/(Ro+R_L))*Aiint;
disp(Aiext,"The external current gain is");
