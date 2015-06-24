// Exa 5.4
format('v',6)
clc;
clear;
close;
// Given data
Avint = 100;
Ri = 1;// in k ohm
Ro = 200;// in ohm
Ro = Ro * 10^-3;// in k ohm
R_S = 50;// in ohm
R_S = R_S * 10^-3;// in k ohm
R_L = 2;// in k ohm
// Avext = V_L/V_S =Avint*(Ri/(RiR_S))*(R_L/(R_L+Ro));
Avext = Avint*(Ri/(Ri+R_S))*(R_L/(R_L+Ro));
disp(Avext,"The external voltage gain is");
