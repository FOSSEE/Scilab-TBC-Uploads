// Exa 6.1
clc;
clear;
close;
// Given data
P = 10;// in bar
P = P  *10^5;// in N/m^2
V = 2;//volume of water in m^3
W = P * V;// in J
W = W * 10^-6;// in MJ
disp(W,"Work done in MJ is");
