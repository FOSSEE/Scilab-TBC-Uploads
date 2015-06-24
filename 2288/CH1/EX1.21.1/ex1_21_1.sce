// Exa 1.21.1
clc;
clear;
close;
// Given data
d = 2.82;// in Å
d = d * 10^-10;// in m
n = 1;
theta = 10;// in degree 
//Formula 2*d*sin(theta) = n*lembda;
lembda = 2*d*sind(theta);// in m
lembda = lembda * 10^10;// in Å
disp(lembda,"The wavelength of X-ray in Å is ");
