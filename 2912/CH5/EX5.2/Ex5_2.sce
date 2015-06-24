//chapter 5
//example 5.2
//Calculate de-Broglie wavelength
//page 103-104
clear;
clc;
//given
K=50; // in eV (Kinetic energy)
m0=9.1E-31; // in Kg (mass of electron)
h=6.625E-34; // in J-s (Planck's constant)
e=1.6E-19; // in C (charge of electron)
//calculate
K=K*e; //changing unit from eV to J
//Since K=m*v^2/2
// Therefore v=sqrt(2*K/m)
// Since lambda=h/(m*v)
// Therefore we have
lambda=h/sqrt(2*m0*K); //calculation of wavelength
printf('\nThe wavelength is\t=%1.3E m',lambda);
lambda=lambda*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t=%.3f Angstrom',lambda);
