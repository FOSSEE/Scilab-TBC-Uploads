//clc();
clear;
//To determine dielectric constant of the material
N=3*10^28;          //density of atoms in atoms/m^3
alphae=10^-40;      //electronic constant polarizability in Fm^2
epsilon0=8.85*10^-12;
//consider A=(epsilonr-1)/(epsilonr+2)
A=(N*alphae)/(3*epsilon0);
epsilonr=((2*A)+1)/(1-A);
printf("dielectric constant of the material is %f F/m",epsilonr);

//answer in book is wrong
