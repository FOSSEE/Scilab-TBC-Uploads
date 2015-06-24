//chapter 6
//example 6.4
//Calculate mean free path traveeled by the electrons
//page 147
clear;
clc;
//given
n=8.5E28; // in 1/m^3 (density of electron)
m=9.1E-31; // in Kg (mass of electron)
e=1.6E-19; // in C (charge of electron)
sigma=6E7; // in 1/ohm-m (conductivity)
E_F=7; // in E=eV (Fermi energy of Copper)
//calculate
E_F=E_F*e; // changing unit from eV to J
v_F=sqrt(2*E_F/m); // calculation of velocity of electrons
printf('\nThe velocity of the electrons is \t\t\tv_F=%1.1E m/s',v_F);
// Since sigma=n*e^2*lambda/(2*m*v_F)
// Therefore we have
lambda=2*m*v_F*sigma/(n*e^2); // calculation of mean free path
lambda=lambda*1E10; // changing unit from m to Angstrom
printf('\n\nThe mean free path traveled by the electrons is \t%.f Angstrom',lambda);
// Note: Answer in the book is wrong due to the use of round-off value of v_F as calculated in the first part.
