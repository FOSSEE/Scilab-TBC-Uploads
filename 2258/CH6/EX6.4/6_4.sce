clc();
clear;
// To calculate the electronic polarizability of He atoms
epsilon_0=8.854*10^-12;    //f/m
epsilon_r=1.0000684;
N=2.7*10^25;   //atoms per m^3
alpha_e=(epsilon_0*(epsilon_r-1))/N;
printf("electronic polarizability of He atoms in Fm^2 is");
disp(alpha_e);
