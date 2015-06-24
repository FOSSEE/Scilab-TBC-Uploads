// Exa 1.21.7
clc;
clear;
close;
// Given data
lembda = 1.54;// in Å
lembda= lembda*10^-8;// in cm
At = 63.54;// atomic weight
density = 9.024;// in gm/cc
n = 1;
N_A = 6.023*10^23;
m = At/N_A;// mass
a =(density*m)^(1/3);// in cm
h = 1;
k = 0;
l = 0;
d = a/(sqrt( ((h)^2) + ((k)^2) + ((l)^2) ));// in cm
n = 1;
//Formula 2*d*sin(theta) = n*lembda;
theta = asind( (lembda)/(2*d) );// in degree
disp(theta,"The glancing angle in degree is");

