// Exa 1.21.6
clc;
clear;
close;
// Given data
a = 3.65;// in Å
h = 1;
k = 0;
l = 0;
d = a/(sqrt( ((h)^2) + ((k)^2) + ((l)^2) ));// in Å
n = 1;
theta = 60;// in degree
//Formula 2*d*sin(theta) = n*lembda;
lambda = 2*d*sind(theta);// in Å
disp(lambda,"Wavelength of X ray in Å is");
