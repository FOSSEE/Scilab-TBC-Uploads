//clc();
clear;
//To calculate the density
r=0.1278*10^-9;     //atomic radius in m
n=4;                //number of atoms per unit volume
M=63.5;           //atomic weight in a.m.u
N=6.02*10^26;      //avagadro number in kg/mol
a=sqrt(8)*r;
rho=(n*M)/(N*(a^3));
printf("density in kg/m^3 is ");
disp(rho);
