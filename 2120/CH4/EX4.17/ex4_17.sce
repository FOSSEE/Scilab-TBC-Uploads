// Exa 4.17
clc;
clear;
close;
// Given data
W = -1;// in kWh
W = W * 10^3 * 3600;// in J
del_U = -5000;// in kj
del_U = del_U * 10^3;// in J
Q = del_U + W;// in J
Q = Q * 10^-6;// in MJ
disp(Q,"Net heat transfer for the system in MJ is : ");
