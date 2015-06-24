clc
clear
//INPUT DATA
n=4//no.of atoms in FCC structure
d=2.7*10^3//density of potassium bromide in Kg/m^3
AW=119//molecular weight of KBr
N=6.023*10^26//Avagadro's number per Kg mol

//CALCULATION
a=(((n*AW)/(d*N))^(1/3))/10^-10//The lattice constant in armstrong *10^-10

//OUTPUT
printf('The lattice constant is %3.1f Armstrong',a)

