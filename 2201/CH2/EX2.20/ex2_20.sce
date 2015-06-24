// Exa 2.20
clc;
clear;
close;
// Given data
Sigma = 5.8*10^7;// in mho/m
l = 1;// in m
d = 1;// in cm
d = d * 10^-2;// in m
W = 1;// in mm 
W = W*10^-3;// in m
I = 1;// in Amp
B = 1;// in Tesla
V_H = 0.074*10^-6;// in Volts
A = 10^-2 * 10^-3;// in m^2
R_H = (V_H*A)/(B*I*d);// in m^3/c
disp(R_H,"Hall coefficient in m^3/c is");
Miu = Sigma * R_H;// in m^2/volt.sec
disp(Miu,"The mobility of electron in m^2/volt.sec is");
