// Exa 8.10
clc;
clear;
close;
format('v',7)
// Given data
N = 1000;
a = 5;// in cm^2
a = a * 10^-4;// in m^2
l_g = 2;// in mm
l_g = l_g * 10^-3;// in m
B = 0.5;// in T
miu_r= %inf;
phi = B*a;// in Wb
miu_o = 4*%pi*10^-7;
S = l_g/(miu_o*a);// in AT/Wb
// Calculation of current with the help of flux
//phi = mmf/S = N*I/S;
I = (phi*S)/N;// in A
disp(I,"The current required in A is");
// Evaluation of coil inductance
L = (N^2)/S;// in H
disp(L,"The coil inductance in H is");
