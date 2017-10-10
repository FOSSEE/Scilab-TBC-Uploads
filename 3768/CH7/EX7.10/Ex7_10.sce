//Example number 7.10, Page number 149

clc;clear;
close;

//Variable declaration
epsilon0=8.85*10**-12;    
N=2.7*10**25;   //density of atoms
R=0.55*10**-10;    //radius(m)
//Calculation
alpha_e=4*%pi*epsilon0*R**3;     //polarisability(Fm**2)
epsilonr=(N*alpha_e/epsilon0)+1;     //relative permittivity
//Result
printf("polarisability is %.3e Fm^2",alpha_e)
printf("\n relative permittivity is %.7f Fm^2",epsilonr)
