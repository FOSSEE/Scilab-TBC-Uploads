clc
clear
//INPUT DATA
a=0.1*10^-9//length of one dimensional box in m
n=1//first permitted level
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
m=9.11*10^-31//mass of electron in Kg
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
E1=((n^2*h^2)/(8*m*a^2*e))//The ground state of electron in an one dimensional box in eV
E6=36*E1//The fifth exited state of electron in eV
E=E6-E1//The energy required the electron from its ground state to the fifth exited state in eV

//OUTPUT
printf('The energy required the electron from its ground state to the fifth exited state is %i eV',E)
