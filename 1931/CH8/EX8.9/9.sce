clc
clear
//INPUT DATA
a=0.1*10^-9//width of high potential box in m
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
m=9.11*10^-31//mass of electron in Kg
e=1.6*10^-19//charge of electron in coulombs
n=1//take n equal to one

//CALCULATION
E=((n^2*h^2)/(8*m*a^2*e))//The least energy of the particle can be obtained in eV

//OUTPUT
printf('The least energy of the particle can be obtained is %3.2f eV',E)
