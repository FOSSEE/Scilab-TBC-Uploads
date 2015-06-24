clc
clear
//INPUT DATA
a=4*10^-9//width of potential well in m
n=1//For minimum energy n value
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
m=9.11*10^-31//mass of electron in Kg
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
E=((n^2*h^2)/(8*m*a^2*e))//The lowest energy of electron in deep potential well in eV

//OUTPUT
printf('The lowest energy of electron in deep potential well is %3.5f eV',E)

