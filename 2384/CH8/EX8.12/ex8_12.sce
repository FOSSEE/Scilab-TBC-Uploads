// Exa 8.12
clc;
clear;
close;
format('v',6)
// Given data
phi = 0.015;// in Wb
l_g = 2.5;// in mm
l_g = l_g * 10^-3;// in m
a = 200;// in cm^2
a = a * 10^-4;// in m^2
miu_o = 4*%pi*10^-7;
// Calculation of reluctance of air gap
Sg = l_g/(miu_o*a);// in AT/Wb
mmf = phi*Sg;// in AT
disp(mmf,"The mmf required in AT is");
