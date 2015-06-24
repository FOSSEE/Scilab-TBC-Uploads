//chapter 5
//example 5.6
//Calculate wavelength for photon and electron
//page 105
clear;
clc;
//given
E=1000; // in eV (Kinetic energy of photon)
K=1000; // in eV (Kinetic energy of electron)
m0=9.1E-31; // in Kg (mass of electron)
h=6.6E-34; // in J-s (Planck's constant)
c=3E8; // in m/s (velocity of light)
e=1.6E-19; // in C (charge on electron)
//calculate
E=E*e; // changing unit from eV to J
lambda_p=h*c/E; // For photon E=hc/lambda
printf('\nFor photon,the wavelength is\t=%1.2E m',lambda_p);
lambda_p=lambda_p*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t\t=%.1f Angstrom',lambda_p)
//Since K=m*v^2/2
// Therefore v=sqrt(2*K/m)
// Since lambda=h/(m*v)
// Therefore we have
K=K*e; // changing unit from eV to J
lambda_e=h/sqrt(2*m0*K); //calculation of wavelength
printf('\nFor electron,the wavelength is\t=%1.1E m',lambda_e);
lambda_e=lambda_e*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t\t=%.2f Angstrom',lambda_e);
// Note: The answer in the book is wrong because K=1.6E-16 J but the solution is using K=2.4*E-15 J
