clc
clear
//INPUT DATA
E=5.5*1.6*10^-19//energy level in J
Ef=5*1.6*10^-19//fermi energy level in J
x=0.5*1.6*10^-19//Difference between energy and fermi energy in J
f=0.01//fermi function at which there is 1% probability that an electron in a solid
KB=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1

//CALCULATION
T=(x/(KB*(log(1-f)-log(f))))/10^3//The temperature at which there is 1% probability that an electron in a solid in K*10^3

//output
printf('The temperature at which there is one percentage  probability that an electron in a solid is %3.4f*10^3 K',T)
