clc
clear
//INPUT DATA
n=4//no.of atoms in FCC structure
A=63.54//Atomic weight of copper
r=1.278*10^-10//atomic radius in m
N=6.023*10^26//Avogadro's Number per Kg mol

//CALCULATION
a=((4*r)/sqrt(2))//The lattice constant in m
d=((A*n)/(N*a*a*a))//The density of copper in Kg/m^3

//OUTPUT
printf('The density of copper is %i Kg/m^3',d)
