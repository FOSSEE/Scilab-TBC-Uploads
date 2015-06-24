clc
clear
//INPUT DATA
//E-EF=KT
//K=KB is the boltzmann constant in m^2 Kg s^-2 k^-1

//CALCULATION
f=1/(1+exp(1))//The fermi function for an energy kt above fermi energy

//OUPUT
printf('The fermi function for an energy kt above fermi energy is %3.3f',f)
