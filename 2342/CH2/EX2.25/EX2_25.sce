//Exa 2.25
format('v',6)
clc;
clear;
close;
// Given data
E= 5.95;// in eV
EF= 6.25;// in eV
delE= 0.01;
 // delE= 1-1/(1+exp((E-EF)/KT))
K=1.38*10^-23;// Boltzmann Constant in J/K
// The temperature at which there is a 1 % probability that a state 0.30 eV below the Fermi energy level
T = ((E-EF)/log(1/(1-delE) -1)*1.6*10^-19)/K;// in K
disp(T,"The temperature in K is : ")
 
