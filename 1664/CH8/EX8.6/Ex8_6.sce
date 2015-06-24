
//Example No.8.6.
//Page No.232.
clc;clear;
n = 18.1*10^(28);
h = 6.62*10^(-34);//Planck's constant.
m = 9.1*10^(-31);//mass of electron
Efo = (h^(2)/(8*m))*(((3*n)/(%pi))^(2/3));//The fermi energy level at 0 k.
printf("\nFermi energy of Al at 0 k in joules = %3.3e J",Efo);
Efo = (Efo/(1.6*10^(-19)));
printf("\nFermi energy of Al at 0 k in eV = %.2fe eV",Efo);
