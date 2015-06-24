//chapter 7
//example 7.3
//Calculate the radius of electron cloud and dispalcement
//page 188
clear;
clc;
//given
N=2.7E25; // in 1/m^3 (density of atoms)
E=1E6; // in V/m (electric field)
Z=2; // atomic number of Helium 
Eo=8.85E-12; // in F/m (absolute permittivity)
Er=1.0000684; // (dielectric constant of the material)
e=1.6E-19; // in C (charge of electron)
pi=3.14; // value of pi used in the solution
//calculate
// since  alpha=Eo*(Er-1)/N=4*pi*Eo*r_0^3 
// Therefore we have r_0^3=(Er-1)/(4*pi*N)
r_0=((Er-1)/(4*pi*N))^(1/3);// calculation of radius of electron cloud
printf('\nThe radius of electron cloud is \t r_0=%1.2E m',r_0);
x=4*pi*Eo*E*r_0/(Z*e); // calculation of dispalcement
printf('\n\nThe displacement is x=%1.2E m',x);
// NOTE: The answer is wrong due to calculation mistake.
