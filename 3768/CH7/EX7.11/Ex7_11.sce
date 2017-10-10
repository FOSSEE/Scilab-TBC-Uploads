//Example number 7.11, Page number 150

clc;clear;
close;

//Variable declaration
A=180*10**-4;     //area(m**2)
epsilonr=8;     //relative permittivity
C=3*10**-6;     //capacitance(F)
V=10;          //potential(V)
epsilon0=8.85*10**-12;    
//Calculation
E=V*C/(epsilon0*epsilonr);    //field strength(V/m)
dm=epsilon0*(epsilonr-1)*A*E;     //total dipole moment(coul m)
//Result
printf("field strength is %.4e V/m",E)
printf("\n total dipole moment is %.4e Coul.m",dm)
//answer in the book is wrong"
