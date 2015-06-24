//chapter 5
//example 5.8
//Calculate de-Broglie wavelength
//page 106
clear;
clc;
//given
T=400; // in K (temperature)
m=6.7E-27; // in Kg (mass of He-atom)
h=6.6E-34; // in J-s (Planck's constant)
k=1.376E-23; // in J/degree (Boltzmann constant)
//calculate
// Since lambda=h/(m*v)
// E=mv^2/2;
// Therefore lambda=h/sqrt(2*m*E)
//E=kT
//Therefore lambda=h/sqrt(2*m*k*T)
lambda=h/sqrt(2*m*k*T)
printf('\nThe de-Broglie wavelength of He-atom is \t=%1.4E m',lambda);
lambda=lambda*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t\t\t\t=%.4f Angstrom',lambda);
