// Exa 3.22
clc;
clear;
close;
// Given data
P1 = 1;// in  bar
V1 = 400;// in  cm^3
V2 = 80;// in Cm^3
T1 = 110;// in degree C
T1  = T1 + 273;// in K
Gamma = 1.3;
P2 = P1*((V1/V2)^(Gamma));// in bar
disp(P2,"The pressure in bar is");
T2 = T1 * ((P2*V2)/(P1*V1));// in K
T2 = T2-273;//in degree C
disp(T2,"The temperature in degree C is");
T2 = T2 + 273;// in K
m = 1;
C_V = 0.75;
del_U = m*C_V*(T2-T1);// in kJ
disp(del_U,"Change in internal energy in kJ is");
P1= P1*10^5;// in N/m^2
P2= P2*10^5;// in N/m^2
V1= V1*10^-3;// in litre
V2= V2*10^-3;// in litre
W = (P1*V1-P2*V2)/(Gamma-1);// in J
W = abs(W * 10^-3);// in kJ
disp(W,"Work done in kJ is");
P3 = 40*10^5;// in N/m^2
T3 = (P3/P2) * T2;// in K
T3 = T3 - 273;// in degree C
disp(T3,"Temperature of gas in degree C is");
