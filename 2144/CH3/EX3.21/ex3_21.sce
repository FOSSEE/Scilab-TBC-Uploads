// Exa 3.21
clc;
clear;
close;
// Given data
Gamma = 1.4;
P1 = 7;// in bar
P1= P1*10^5;// in N/m^2
V1 = 1.6;// in m^3
V2 = 8;// in m^3
P2 = (P1 * (V1)^(Gamma))/((V2)^(Gamma));// in bar
W1 = (P1*V1-P2*V2)/(Gamma-1);//work done by the gas during isentropic expansion in J
Rho = V2/V1;
W2 = P1*V1*(log(Rho));//work done by the gas during isothermal expansion in J
del_W = W2-W1;// in J
disp(del_W*10^-3,"Difference between the work done during isentropic and isothemal expansion in kJ is");
