clc
clear
//INPUT DATA
AW=63.5//atomic weight of copper in u
M=63.5*1.66*10^-27//mass of one copper atom in Kg
d=8.94*10^3//density of sodium in Kg/m^3
m=9.11*10^-31//mass of electon in Kg
h=6.625*10^-34//plank's constant in m^2 Kg/sec
e=1.6*10^-19//charge of electro in C

//CALCULATION
nc=(d)/M//number of electrons per unit volume in electrons/m^3
Ef=(((h*h)/(8*m)*((3*nc)/3.14)^(2/3))/e)//The fermi energy for the sodium in eV

//OUTPUT
printf('The fermi energy for the sodium is %3.3f eV',Ef)
