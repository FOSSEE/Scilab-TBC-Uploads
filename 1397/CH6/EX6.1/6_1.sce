//clc();
clear;
//To determine density
n=8;                //number of atoms per unit cell
a=5.6*10^-10;       //lattice constant in m
M=710.59;           //atomic weight of Germanium in a.m.u
N=6.02*10^26;       //avagadro number in kg/mol
rho=(n*M)/(N*a^3);
printf("density in kg/m^3 is ");
disp(rho);
