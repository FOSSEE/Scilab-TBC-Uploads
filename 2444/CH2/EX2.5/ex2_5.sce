// Exa 2.5
clc;
clear;
close;
format('v',6)
// Given data
n = 2;// second order
d = 0.4;// in nm
d = d * 10^-9;// in m
theta = 16.8/2;// in degree
// n*lembda = 2*d*sind(theta)  (using Bragg's equation)
lembda = (2*d*sind(theta))/n;// in m
lembda = lembda * 10^10;// in angstrum
disp(lembda,"The wavelength of x-rays in angstrum is");
