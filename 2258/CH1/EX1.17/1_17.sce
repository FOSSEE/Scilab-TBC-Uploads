clc();
clear;
// To calculate the Fermi energy of the metal
d=970;   //density of Na in kg/m^3
n=6.02*10^26;
h=6.62*10^(-34);
m=9.1*10^-31;   //mass in kg
w=23;   //atomic weight 
N=(d*n)/w;   //number of atoms per m^3
A=(h^2)/(8*m);
B=(3*N)/%pi;
Ef=A*B^(2/3);
EfeV=Ef/(1.6*10^-19);
printf("fermi energy of Na is %f eV",EfeV);
