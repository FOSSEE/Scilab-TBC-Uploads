clc
clear
//INPUT DATA
X=0.01*1.6*10^-19//difference between energy and fermi energy in J
T=200//temperature in k
KB=1.38*10^-23//Boltzmann's Constant in J/K

//CALCULATION
f=1/(1+exp(X/(KB*T)))//The fermi function

//OUTPUT
printf('The fermi function is %3.5f',f)
