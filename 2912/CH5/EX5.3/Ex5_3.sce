//chapter 5
//example 5.3
//Calculate  wavelength
//page 104
clear;
clc;
//given
E=2000; // in eV (Kinetic energy)
m=9.1E-31; // in Kg (mass of electron)
h=6.625E-34; // in J-s (Planck's constant)
e=1.6E-19; // in C (charge of electron)
//calculate
E=E*e; //changing unit from eV to J
//Since E=m*v^2/2
// Therefore v=sqrt(2*E/m)
// Since lambda=h/(m*v)
// Therefore we have
lambda=h/sqrt(2*m*E); //calculation of wavelength
printf('\nThe wavelength is\t=%1.3E m',lambda);
lambda=lambda*1E9; //changing unit from m to nanometer
printf('\n\t\t\t=%.4f nm',lambda);
