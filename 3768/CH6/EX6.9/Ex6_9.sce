//Example number 6.9, Page number 120

clc;clear;
close;

//Variable declaration
Ee=10;     //electron kinetic energy(eV)
Ep=10;     //proton kinetic energy(eV)
e=1.6*10**-19;      //charge(c)
me=9.1*10**-31;      //mass(kg)
mp=1.67*10**-27;     //mass(kg)
//Calculation
cebar=sqrt(2*Ee*e/me);    //electron velocity(m/s)
cpbar=sqrt(2*Ep*e/mp);    //proton velocity(m/s)
//Result
printf("electron velocity is %.3e m/s",cebar)
printf("\n proton velocity is %.3e m/s",cpbar)
//answers given in the book are wrong
