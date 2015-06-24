// Exa 10.14
clc;
clear;
close;
format('v',7)
// Given data
P = 4;
slots = 144;
phi = 20;// in mWb
phi = phi * 10^-3;// in Wb
N = 720;// in rpm
A = 4;
P =4;
n1 = 2;// in coil/slot
n2 = 2;// in turns/coil
Z = slots*n1*n2;// total number of conductor
Eg = (N*P*phi*Z)/(60*A);// in V
disp(Eg,"The induced voltage in V is");
