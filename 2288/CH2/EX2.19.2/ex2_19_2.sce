//Exa 2.19.2
clc;
clear;
close;
format('e',8)
// Given data
l = 1;// in m
d = 1;// in cm
d = d * 10^-2;// in m
W = 1;// in mm
W = W * 10^-3;// in m
A = d * W;// in m^2
I= 1;// in Amp
B = 1;// Tesla
V_H = 0.074 * 10^-6;// in Volts
Sigma = 5.8 * 10^7;// in mho/m
R_H = (V_H * A)/(B*I*d);// in m^3/c
disp(R_H,"The hall coefficient in m^3/c is");
Mu = Sigma * R_H;// in m^2/volt.sec
disp(Mu,"The mobility  of electrons in copper in m^2/volt-sec is ");
