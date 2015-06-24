// Exa 8.15
clc;
clear;
close;
format('v',7)
// Given data
l = 40;// in cm
l = l * 10^-2;// in m
a = 4;// in cm^2
a = a * 10^-4;// in m^2
miu_r = 1000;
miu_o = 4*%pi*10^-7;
l_g = 1;// in mm
l_g = l_g * 10^-3;// in m
N = 1000;
l_i = l-l_g;// in m
Si = l_i/(miu_r*miu_o*a);// in AT/Wb
Sg = l_g/(miu_o*a);// in AT/Wb
S = Si+Sg;// in AT/Wb
// The inductnace of the coil 
L = (N^2)/S;// in H
disp(L,"The inductnace of the coil in H is");
