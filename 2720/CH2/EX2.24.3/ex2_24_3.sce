//Exa 2.24.3
clc;
clear;
close;
format('v',5)
// Given data
E= 5.95;// in eV
EF= 6.25;// in eV
delE= 0.01;
 // delE= 1-1/(1+exp((E-EF)/KT))
K=1.381*10^-23;// Boltzman Constant in J/K
T = ((E-EF)/log(1/(1-delE) -1)*1.6*10^-19)/K;// in K
T= round(T)
disp(T,"The temperature in K is : ")
 
