// Exa 2.14
clc;
clear;
close;
// Given data
N_A = 6.025*10^26;// in /kg.Mole
At = 72.59;// atomic weight
d = 5.36*10^3;// in kg/m^3
R = 0.42;// in ohm m
B_i = 10^-6;//rate of boron impurity in %
e = 1.6*10^-19;// in C
n = (N_A/At)*d;// number of Ge atoms
h = n/10^8;//holes per unit volume
Miu_h = 1/(R*h*e);// in m^2/V.sec
disp(Miu_h,"The Mobility of holes in m^2/V-sec is");
