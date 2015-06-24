// Exa 8.6
clc;
clear;
close;
format('v',8)
// Given data
miu_r = 1400;
l = 70;// in cm
l = l * 10^-2;// in m
a = 5;// in cm^2
a = a * 10^-4;// in m^2
N = 1000;
miu_o = 4*%pi*10^-7;
S = l/(miu_o*miu_r*a);// in AT/Wb
disp(S,"The reluctance of the magnetic circuit in AT/Wb is");
format('v',7)
// Calculation of inductance of the coil
L = (N^2)/S;// in H
disp(L,"The inductance of the coil in H is");

// Note: In the book the calculated value of L is correct but at last they print its value wrong
