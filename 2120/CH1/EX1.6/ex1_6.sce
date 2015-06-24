// Exa 1.6
clc;
clear;
close;
// Given data
// W = 2*g*h
// due to stirring of water
g = 9.81;
J = 4.1868*10^3;
m = (0.2+10*10^-3)*10^3;// in gm
s= 1;// in cal per gm°C
del_T = 2;// in ° C
H = m * s * del_T;// in cal
H = H*10^-3;// in kcal
// W = JH and W= 2*g*h
h = J*H/(2 * g);// in m
disp(h,"The height from the mass should be fall in meter is :");


