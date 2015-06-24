
//Example No.4.11.
//Page No.138.
clc;clear;
n = 1;//For the lowest energy value n=1.
h = 6.626*10^(-34);//Planck's constant.
L = 1*10^(-10);//Width of the potential well -[m].
m = 9.1*10^(-31);//Mass of the electron.
E = ((n^(2)*h^(2))/(8*m*L^(2)));
E = ((h^(2))/(8*m*L^(2)));// For the lowest energy value n=1.
printf("\nThe lowest energy of the electron in joules is %3.3e J",E);;// Lowest energy of the electron in joules.
E = (E/(1.6*10^(-19)));
printf("\nThe lowest energy of the electron in eV is %.2f eV",E);// Lowest energy of the electron in eV.

