//clc();
clear;
//To determine the lattice constant
n=2;                //number of atoms per unit cell
M=6.94;           //atomic weight in a.m.u
N=6.02*10^26;      //avagadro number in kg/mol
rho=530;          //density in kg/m^3; 
a0=((n*M)/(N*rho))^(1/3);
a=a0*10^10;
printf("lattice constant in Armstrong is ");
disp(a);
