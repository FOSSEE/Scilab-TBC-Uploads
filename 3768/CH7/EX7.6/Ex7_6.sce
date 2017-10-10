//Example number 7.6, Page number 148

clc;clear;
close;

//Variable declaration
A=6.45*10**-4;      //area(m**2)
epsilon0=8.85*10**-12;    
d=2*10**-3;     //seperation(m)
epsilonr=5;   //dielectric constant
N=6.023*10**23;   //avagadro number
//Calculation
alpha_e=epsilon0*(epsilonr-1)/N;    //polarisability(Fm**2)
//Result
printf("polarisability is %.3e Fm^2",alpha_e)
//answer in the book is wrong
