//Exa 1.10
clc;
clear;
close;
// Given data
a = 3.65;// in Å
a = 3.65*10^-10;// in m
h = 1;
k = 0;
l = 0;
d= a/(sqrt(h^2+k^2+l^2));// in m
n = 1;
theta = 60;// in degree
lembda = 2*d*sind(theta);// in m
lembda = lembda * 10^10;// in Å
disp(lembda,"Wavelength of X ray in  Å is");
