//Example No.8.7.
//Page No.233.
clc;clear;
h = 6.62*10^(-34);//Planck's constant -[J s].
m = 9.1*10^(-31);//mass -[kg].
Efo = 5.5*1.6*10^(-19);//Fermi energy.
n = ((2*m*Efo)^(3/2))*(8*(%pi))/(3*(h^(3)));
printf("\nThe concentration of free electrons per unit volume of silver is %3.3e m^-3",n);
