//Example number 6.2, Page number 116

clc;clear;
close;

//Variable declaration
T=300;    //temperature(K)
n=8.5*10**28;    //density(per m**3)
rho=1.69*10**-8;   //resistivity(ohm/m**3)
e=1.6*10**-19;      //charge(c)
m=9.11*10**-31;      //mass(kg)
Kb=1.38*10**-23;     //boltzmann constant(J/k)
//Calculation
rho=sqrt(3*Kb*m*T)/(n*e**2*rho);     //mean free path(m)
//Result
printf("mean free path is %.2e m",rho)
//answer given in the book is wrong
