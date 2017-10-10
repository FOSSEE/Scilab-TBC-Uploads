//Example number 6.7, Page number 119

clc;clear;
close;

//Variable declaration
Kb=1.38*10**-23;     //boltzmann constant(J/k)
T=303;     //temperature(K)
e=1.6*10**-19;      //charge(c)
MH=2*1.008*1.67*10**-27;   //mass(kg)   
//Calculation
KE=3*Kb*T/(2*e);     //kinetic energy(eV)
cbar=sqrt(3*Kb*T/MH);     //velocity(m/s)
//Result
printf("kinetic energy is %.1e eV",KE)
printf("\n velocity is %.2f m/s",cbar)
//answer given in the book is wrong
