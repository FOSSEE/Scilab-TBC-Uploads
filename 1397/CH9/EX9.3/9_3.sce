//clc();
clear;
//To determine the electronic polarisability of He atoms
epsilonr=1.0000684;       //dielectric constant
N=2.7*10^25;              //number of atoms per unit volume
epsilon0=8.85*10^-12;
alphae=(epsilon0*(epsilonr-1))/N;
printf("electronic polarizability in Fm^2 is ");
disp(alphae);
