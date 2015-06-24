//chapter 5
//example 5.1
//Find velocity and kinetic energy
//page 102-103
clear;
clc;
//given
lambda=1; //in Angstrom (wavelength)
m=1.67E-27; // in Kg (mass of neutron)
h=6.625E-34; // in J-s (Planck's constant)
e=1.6E-19; // in C (charge of electron)
//calculate
lambda=lambda*1E-10; //since lambda is in Angstrom
// Since lambda=h/(m*v)
// Therefore we have
v=h/(m*lambda); //calculation of velocity
printf('\nThe velocity is \t v=%1.2E m/s',v);
K=m*v^2/2; //calculation of kinetic energy
printf('\nThe kinetic energy is\tK=%1.2E J',K);
K=K/e; //changing unit fro J to eV
printf('\n\t\t\t=%.4f eV',K);
//Note: Due to round off, there is slight variation in the answer
