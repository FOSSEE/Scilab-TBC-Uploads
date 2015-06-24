// Exa 8.14
clc;
clear;
close;
format('v',7)
// Given data
l = 30;// in cm
d = 2;// in cm
N = 500;
phi = 0.5;// in mWb
Airgap = 1;// in mm
miu_r = 4000;
miu_o = 4*%pi*10^-7;
Ac = (%pi/4)*(d^2);// in cm^2
Ac = Ac * 10^-4;// in m^2
l_i = (l*10^-2)-(Airgap*10^-3);// in m
l_g = 1;// in mm
l_g = l_g * 10^-3;// in m
Si = l_i/(miu_r*miu_o*Ac);// in AT/Wb
Sg = l_g/(miu_o*Ac);// in AT/Wb
S =Si+Sg;// in AT/Wb
//phi = mmf/S = N*I/S;
I = (phi*10^-3*S)/N;// in A
disp(I,"The current required in A is");
