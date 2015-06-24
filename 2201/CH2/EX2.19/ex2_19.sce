// Exa 2.19
clc;
clear;
close;
// Given data
Si_density = 10.5;// in gm/cc
N_A = 6.025*10^23;
At = 108;//atomic weight
B = 0.8;// in Tesla
w = 0.50;// in cm
w = w * 10^-2;// in m
t = 0.10;// in mm
t = t * 10^-3;// in m
A = w*t;// in m^2
q = 1.6*10^-19;// in C
I = 2;// in ampere
n = (N_A/At) * Si_density ;// in /cc
n = n * 10^6;// in /m^3
V_H = (B*I*t)/(n*q*A);// in volts
disp(V_H,"The hall voltage produced in volts is");
