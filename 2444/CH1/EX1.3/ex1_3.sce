// Exa 1.3
clc;
clear;
close;
format('v',10)
// Given data
e = 1.6*10^-19;// in C
m = 9.1*10^-31;// in kg
miu_e = 7.04 * 10^-3;// in m^2/V-s
n = 5.8*10^28;// in /m^3
torque = (miu_e/e)*m;// in sec
disp(torque,"The relaxation time in sec is");
sigma = n*e*miu_e;
rho = 1/sigma ;// in ohm-m
disp(rho,"The resistivity of conductor in ohm-m is");
