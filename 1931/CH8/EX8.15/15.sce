clc
clear
//INPUT DATA
a=0.1*10^-9//length of one dimensional box in m
n=1//first permitted level
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
m=9.11*10^-31//mass of electron in Kg
e=1.6*10^-19//charge of electron in coulombs
ne=3//the number of electrons

//CALCULATION
E=((n^2*h^2)/(8*m*a^2*e))*ne//The lowest energy of the system consisting of three electron ia a one dimensional box in eV

//OUTPUT
printf('The lowest energy of the system consisting of three electron ia a one dimensional box is %3.4f eV',E)
