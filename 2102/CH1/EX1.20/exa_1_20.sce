// Exa 1.20
clc;
clear;
close;
// Given data
e= 1.6*10^-19;// in C
I=100;// in A
n_o= 8.5*10^28;// in m^-3
A=10^-5;// in m^2
// Formula I= n_o*A*e*Vd
Vd= I/(n_o*e*A);// in ms^-1
disp(Vd,"The drift velocity of free electron in ms^-1 is : ")
