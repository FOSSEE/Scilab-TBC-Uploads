clc
clear
//INPUT DATA
a=4*10^-10//width of electron box in m
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
m=9.11*10^-31//mass of electron in Kg
e=1.6*10^-19//charge of electron in coulombs
n=1//first permitted level

//CALCULATION
E1=((n^2*h^2)/(8*m*a^2*e))//The first permitted energy level by taking n=1 in eV
E2=4*E1//The second permitted energy level by taking n=2 in eV
E3=9*E1//The third permitted energy level by taking n=3 in eV

//OUTPUT
printf('The first permitted energy level by taking n=1 is %3.3f eV \n The second permitted energy level by taking n=2 is %3.3f eV \n The third permitted energy level by taking n=3 is %3.3f eV',E1,E2,E3)
