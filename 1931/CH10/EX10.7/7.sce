clc
clear
//INPUT DATA
Eg=1*1.6*10^-19//Energy gap in J
E=0.1*1.6*10^-19//Fermi level is shifted by 10% in J
me=1*9.11*10^-31//The electron mobility in m^2 V^-1 s^-1
mh=4*9.11*10^-31//Effective mass of holes is 4 times that of electrons that is the hole mobility in m^2 V^-1 s^-1
m=9.11*10^-31//mass of an electron in Kg
kb=1.38*10^-23//Boltzmann's constant m^2 Kg s^-2 k^-1

//CALCULATION
T=(4*E)/(3*kb*log(4))//The Temperature of the fermi level shifted by 10% from the middle of the forbidden energy gap in K

//OUTPUT
printf('The Temperature of the fermi level shifted by 10percentage from the middle of the forbidden energy gap is %3.2f K',T)
