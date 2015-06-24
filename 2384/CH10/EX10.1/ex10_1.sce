// Exa 10.1
clc;
clear;
close;
format('v',6)
// Given data
A = 2;// in wavewound
N = 1200;// in rpm
phi = 0.02;// in Wb
n = 65;// no of slots
P = 4;
Z = n*12;// total number of conductor
// Emf equation
Eg = (N*P*phi*Z)/(60*A);// in V
disp(Eg,"The emf generated in V is");
