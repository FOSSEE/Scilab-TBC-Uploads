//clc();
clear;
//To calculate the number of atoms per unit cell
a=2.9*10^-10;      //lattice parameter in m
M=55.85;           //molecular weight in kg/m^3
N=6.02*10^26;      //avagadro number in kg/mol
rho=7870;          //density in kg/m^3; 
n=(rho*N*(a^3))/M;
printf("number of atoms is ");
disp(n);
