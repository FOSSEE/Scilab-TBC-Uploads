//Calculate radius of the smallest orbit of the Hydrogen atom 

//Example 14.2

clc;

clear;

Eo=8.8542*10^-12;  //Permittivity of free space in C^2 N^-1 m^-2

h=6.626*10^-34;  //Planck's constant in j s

Me=9.109*10^-31;  //Mass of the electron in kg

e=1.602*10^-19;  //Charge of an electron in C

n=1;  //Quantum number

Z=1;  //Atomic number of Hydrogen atom 

r1=((n^2)*(h^2)*Eo)/((Z*%pi*Me)*(e^2));  //Radius of the Bohr orbit in m

r=r1/10^-10;  //Radius of the Bohr orbit in A

printf("radius of the smallest orbit of the Hydrogen atom = %.3f A",r);
