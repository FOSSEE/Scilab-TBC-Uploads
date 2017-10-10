//Example number 7.4, Page number 147

clc;clear;
close;

//Variable declaration
alpha_e=10**-40;      //polarisability(Fm**2)
N=3*10**28;    //density of atoms
epsilon0=8.85*10**-12;    
//Calculation
x=N*alpha_e/epsilon0;
epsilonr=(1+(2*x))/(1-x);     //dielectric constant(F/m)
//Result
printf("dielectric constant is %.3f F/m",epsilonr)
//answer in the book is wrong
