// Exa 10.3
clc;
clear;
close;
format('v',7)
// Given data
P = 4;
phi = 20;// in mWb
phi = phi * 10^-3;// in Wb
A = 4;
P = A;
N =720;// in rpm
n = 144;// no of slots in slots
n1 = 2;// no of coils 
n2 = 2;// no of turns in turns
Z = n*n1*n2;// total number of conductor
// Generated emf
E = (N*P*phi*Z)/(60*A);// in V
disp(E,"The induced voltage in V is");
