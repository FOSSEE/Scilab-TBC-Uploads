clc
clear
//INPUT DATA
a=10^-14//length of impenerable box in m
m=1.67*10^-27//mass of neutron in Kg
n=1//for lowest energy
h=6.625*10^-34//Planck's constant in m^2 Kg /sec

//CALCULATION
E=((n^2*h^2)/(8*m*a^2))/10^-13//The least energy of the neutron can be obtained in eV*10^-13

//OUTPUT
printf('The least energy of the neutron can be obtained is %3.3f*10^-13 eV',E)


