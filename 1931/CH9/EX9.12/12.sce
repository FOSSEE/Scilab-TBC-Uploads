clc
clear
//INPUT DATA
AW=23//atomic weight of sodium in gm/mole
d=0.971*10^6//density of sodium in gm/m^3
m=9.11*10^-31//mass of electon in Kg
h=6.625*10^-34//plank's constant in m^2 Kg/sec
AV=6.02*10^23//Avagadro number in mole^-1
e=1.6*10^-19//charge of electro in C

//CALCULATION
nc=(AV*d)/AW//number of electrons per unit volume
Ef=(((h*h)/(8*m)*((3*nc)/3.14)^(2/3))/e)//The fermi energy for the sodium in eV

//OUTPUT
printf('The fermi energy for the sodium is %3.3f eV',Ef)
