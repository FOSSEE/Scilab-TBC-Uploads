// Exa 3.14
clc;
clear;
close;
// Given data
P1 = 30;// in bar
P1= P1*10^5;// in N/m^2
V1 = 0.85;// in m^3
V2 = 4.25;// in m^3
W = P1 *V1 * log(V2/V1);// in Joules
W = W * 10^-3;// in kJ
T = 400;// in K
del_U = W/T;// in kJ/K
disp(del_U,"Change in entropy in kJ/K is");
