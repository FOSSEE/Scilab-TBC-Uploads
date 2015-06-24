// Exa 1.19
clc;
clear;
close;
format('v',6)
// Given data
rho = 0.005;// in ohm-m
Bz = 0.48;// in Wb/m^2
R_H = 3.55*10^-4;// in m^3/C
ExByJx= rho;
// R_H = Ey/(Bz*Jx);
EyByJx= R_H*Bz;
// The hall angle 
theta_H = atand(EyByJx/ExByJx);// in °
disp(theta_H,"The hall angle in degree is");
