clc
clear
//INPUT DATA
X=0.1*1.6*10^-19//difference between energy and fermi energy in J
T=300//temperature in k
KB=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1

//CALCULATION
f=1-1/(1+exp(X/(KB*T)))//The probability of unoccupancy by an electron at room temperature 

//OUTPUT
printf('The probability of unoccupancy by an electron at room temperature is %3.5f',f)
