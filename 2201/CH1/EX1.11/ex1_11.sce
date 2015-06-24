// Exa 1.11
clc;
clear;
close;
// Given data
lembda = 1.54;// in Å
density = 9.024;// in gm/cc
n = 1;
MI = 100;
At_W = 63.54;// atomic weight
N_A = 6.023*10^23;
m = At_W/N_A;// in gm
a =(density*m)^(1/3);// in cm
h = 1;
k = 0;
l = 0;
d= a/(sqrt(h^2+k^2+l^2));
theta = asind( (lembda * 10^-8)/(2*d) );// in degree
disp(theta,"The glancing angle in degree is");
