//Exa 1.21.5
clc;
clear;
close;
// Given data
AvagadroNumber = 6.025 * 10^26;// in kg.Mole
W = 72.59;// atomic weight of Ge
D = 5.36 * 10^3;//density of Ge in kg/m^3
Rho = 0.42;// resistivity in Ohm m
e = 1.6 * 10^-19;// in C
Sigma = 1/Rho;// in mho/m
n = (AvagadroNumber/W) * D;// number of Ge atoms present per unit volume
// Holes per unit volume, H = n*10^-6%
H= n*10^-8;
a=H;
// Formula sigma= a*e*Mu_h
Mu_h = Sigma/(a * e);// in m^2/V.sec
disp(Mu_h,"Mobility of holes in m^2/V.sec is");
