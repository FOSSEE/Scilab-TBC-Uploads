// Exa 4.1
clc;
clear;
close;
// Given data
p = 1.0;// in MPa
p = p * 10^6;// in N per m^2
del_v = 1.5;// in m^3 per min
del_v = del_v * 60;// in m^3 per h
W = p * del_v;// in J
W = W * 10^-6;// in MJ
disp(W,"Work done by the pump upon the water in MJ");
