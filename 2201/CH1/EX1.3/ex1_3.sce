// Exa 1.3
clc;
clear;
close;
// Given data
a = 5.3;// in Å
a= a * 10^-10;// in m
N_A = 6.023*10^23;
At_Si = 28;// atomic weight of Si
n = 4;
m = At_Si/N_A;// in gm
m= m*10^-3;// in kg
V = a^3;// in m^3
Rho = (m*n)/V;// in kg/m^3
disp(Rho,"Density of silicon crystal in kg/m^3 is");

// Note: There is calculation error to find the value of density. So the answer in the book is wrong.


