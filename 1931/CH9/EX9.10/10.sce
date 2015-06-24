clc
clear
//INPUT DATA
n=2//number of atoms/unit cell in cesium which is Bcc
a=6.14*10^-10//lattice constant of cesium which is BCC crystal in m
nf=1//number of free electrons per atom in cesium
m=9.11*10^-31//mass of electon in Kg
h=6.625*10^-34//plank's constant in m^2 Kg/sec
KB=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1
e=1.6*10^-19//charge of electro in C

//CALCULATION
nc=(n*nf)/(a*a*a)//number of electrons per unit volume
Ef=(((h*h)/(8*m)*((3*nc)/3.14)^(2/3))/e)//The fermi energy for the metal in eV

//OUTPUT
printf('The fermi energy for cesium is %3.3f eV',Ef)
