//Exa 4.21
clc;
clear;
close;
// Given data
v1 = 5;// in m^3
p1 = 2;// in bar
p2 = 6;// in bar
p3 = 2;// in bar
p1 = p1 * 10^5;// in N/m^2
p2 = p2 * 10^5;// in N/m^2
p3 = p3 * 10^5;// in N/m^2
n = 1.3;
v2 = v1 * ((p1/p2)^(1/1.3));// in m^3
W1_2 = ((p2 * v2)-(p1 * v1))/(1-n);// in J
Gamma = 1.4;
v3 = v2 * ((p2/p3)^(1/Gamma));// in m^3
W2_3 = ((p3 * v3) - (p2 * v2))/(1-Gamma);// in J
W_net = W1_2 + W2_3;// in J
W_net = W_net * 10^-3;// in kJ
disp(W_net,"net work done in kJ is : ");
