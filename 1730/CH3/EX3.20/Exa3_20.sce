//Exa3.20
clc;
clear;
close;
// given data
B=0.48;// in Wb/m^2
R_H=3.55*10^-4;// in m^3/C
Resistivity=.00912;// in ohm
sigma=1/Resistivity;
theta_H=atand(sigma*B*R_H);
disp("Hall angle is : "+string(theta_H)+" degree")