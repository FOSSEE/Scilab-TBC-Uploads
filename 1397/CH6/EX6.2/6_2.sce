//clc();
clear;
//To determine the lattice constant
n=2;                //number of atoms per unit cell
M=55.85;           //atomic weight in a.m.u
N=6.02*10^26;      //avagadro number in kg/mol
rho=7860;          //density in kg/m^3; 
a=((n*M)/(N*rho))^(1/3);
printf("lattice constant in m is ");
disp(a);

//answer in book is wrong
