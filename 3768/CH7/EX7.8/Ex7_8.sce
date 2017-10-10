//Example number 7.8, Page number 149

clc;clear;
close;

//Variable declaration
epsilonr=4;       //relative dielectric constant
Na=2.08*10**23;     //avagadro number
epsilon0=8.85*10**-12;    
//Calculation
x=(epsilonr-1)/(epsilonr+2);
alpha_e=x*3*epsilon0/Na;     //electronic polarisability(Fm**2)
//Result
printf("electronic polarisability is %.3e Fm^2",alpha_e)
//answer in the book is wrong
