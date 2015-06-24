clc
clear
//INPUT DATA
n=4//number of atoms/unit cell in Aliminium
a=4.05*10^-10//lattice constant of Aluminium which is FCC crystal in m
nf=3//number of free electrons per atom in Aluminium
T=300//ambient temperature in K
x=0.1*1.6*10^-19//The same difference energy and fermi energy but in J
m=9.11*10^-31//mass of electon in Kg
h=6.625*10^-34//plank's constant in m^2 Kg/sec
KB=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1

//CALCULATION
nc=(n*nf)/(a*a*a)//number of electrons per unit volume
Ef=((h*h)/(8*m)*((3*nc)/3.14)^(2/3))/10^-18//The fermi energy for the metal in eV*10^-18
f=1/(1+exp(x/(KB*T)))//The fermi factor

//OUTPUT
printf('The fermi energy for the metal is %3.2f*10^-18 eV \n The fermi factor is %3.4f',Ef,f)
