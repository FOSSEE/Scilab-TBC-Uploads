clc
clear
//INPUT DATA
n=2//no.of atoms in BCC structure
d=7.86*10^6//density of iron of FCC structure in kg/m^3
AW=55.85//atomic weight of Fe
N=6.023*10^23//Avogadro's Number per Kg mol

//CALCULATION
a=(((n*AW)/(d*N))^(1/3))/10^-10//The lattice constant in m
r=((a*sqrt(3))/4)//The atomic radius of Fe which has BCC structure in armstrong*10^-10

//OUTPUT
printf('The atomic radius of Fe which has BCC structure is %3.3f armstrong',r)
