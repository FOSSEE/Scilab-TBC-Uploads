// Exa 4.2
clc;
clear;
close;
// Given data
// w = 2*g*h
g = 9.81;
m =(0.2+10/1000)*10^3 ;// in gm
s = 1;// in cal/gm°C
del_T = 2;// in °C
H = m * s * del_T;// in cal
H = H * 10^-3;// kcal
J = 4.1868 * 1000;
// W= 2*g*h= J*H
h = J*H/(2 * g);// in m
disp(h,"Height from which the mass should fall in meter is : ");
