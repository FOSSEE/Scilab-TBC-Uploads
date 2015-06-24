clc();
clear;
//Given :
mu_d = 9.27*10^-24; // Bhor magneton in Am^2
mu_0 = 4*%pi*10^-7; // Magnetic permiability in H/m
r = 2; // dipoles distance in A
//U = mu_d*B = -( mu_0*mu_d^2)/(2*pi*r)
//r = 2*10^-10 m , 1 A = 1.0*10^-10 m
U = ( mu_0*mu_d^2)/(2*%pi*(r*10^-10)^3); // Energy 
printf("U = %.1f x 10^-25 ",U*10^25);
