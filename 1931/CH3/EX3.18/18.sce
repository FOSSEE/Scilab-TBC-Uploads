clc
clear
//INPUT DATA
x=23//atomic weight of sodium
y=35.45//atomic weight of chloide
AW=58.45//atomic weight of sodium chloride(NaCl)
n=4//no.of atoms in FCC structure
d=2.18*10^6//density of NaCl crystal of FCC structure in kg/m^3
N=6.023*10^23//Avogadro's Number per Kg mol

//CALCULATION
a=(((n*AW)/(d*N))^(1/3))/10^-10//The lattice constant in m
r=(a/2)//The distance between two adjacent atoms in m *10^-10

//OUTPUT
printf('The distance between two adjacent atoms is %3.2f*10^-10 m',r)
