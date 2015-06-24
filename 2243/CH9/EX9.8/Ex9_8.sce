clc();
clear;
//Given:
n = 1;
theta = 30; //angle in degrees
lambda = 2.88 ; // wavelength in A
M = 108; // atomic weight in kg
Z = 4; // unit cell of silver is FCC
Na = 6.023*10^26 ;// Avogadro constant in kmole
//Bragg's Law : 2*d*sin(theta) = n*lambda , d = d110
d110 = (n*lambda)/(2*sind(theta)); // in A
//plane (110)
h =1;k=1;l=0;
//dhkl = a/sqrt(h^2 + k^2 + l^2)
a = d110*sqrt(h^2 + k^2 + l^2); // in A
//1 A = 1.0*10^-10 m
rho = (Z*M)/(Na*(a*10^-10)^3); // density in kg/m^3
printf(" Density of silver : %.1f kg/m^3",rho);
