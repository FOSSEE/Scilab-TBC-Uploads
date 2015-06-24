// Exav1.5
clc;
clear;
close;
// Given data
p = 1.0;// in Mpa
p = p*10^6;// in N per m^2
del_v = 1.5;//m^3 per min
del_v = del_v*60;// m^3 per h
W = p * del_v;// W stands for work done in J
W = W*10^-6;// in MJ
disp(W,"Work done by the pump upon the water in an hour in MJ is : "); 
