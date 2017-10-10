//Example number 7.3, Page number 147

clc;clear;
close;

//Variable declaration
epsilonr=1.0000684;     //dielectric constant
N=2.7*10**25;   //number of atoms
epsilon0=8.85*10**-12;    
//Calculation
alpha_e=epsilon0*(epsilonr-1)/N;    //polarisability(Fm**2)
//Result
printf("polarisability is %.3e Fm^2",alpha_e)
//answer varies due to rounding off errors
