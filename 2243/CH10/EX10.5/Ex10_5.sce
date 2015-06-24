clc();
clear;
//Given :
N = 5*10^28 ;// number of dipoles per m^3
betaa = 1;// Bohr magneton
T = 300 ; // Room temperature in k
k = 1.38*10^-23 ; //  in J/K
mu_0 = 4*%pi*10^-7 ; //Magnetic permeability in H/m
//1 Bohr magneton = 9.27 × 10^-24 Am^2.
chi = (N*mu_0*betaa*(1*9.27*10^-24)^2)/(k*T);
printf("Susceptibility = %.2f x 10^-3",chi*10^3);
//Result obtained differs from that in textbook, because in textbook only the order is considered.
