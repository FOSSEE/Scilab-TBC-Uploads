// Exa 3.12
clc;
clear;
close;
// Given data
Gamma = 1.4;
P1 = 780;// in kN/m^2
P2 = 100;// in kN/m^2
V1 = 750;// in cm^3
V1= V1*10^-6;// in m^3
V2 = (1/5)*V1;// in m^3
n = (log(P1/P2))/(log(V1/V2));
disp(n,"The value of index is");
W = (P1*V2-P2*V1)/(1-n);// in kJ
disp(W,"Work done in kJ is");
Q = ((Gamma - n)/(Gamma-1)) * (-W);// in kJ
disp("Heat rejected during Compression in kJ is "+string(Q)+" kJ or "+string(Q*10^3)+" joules");

