//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of core
n2=1.46;//Dimensionless refractive index of cladding
d=100e-6;//Width of the waveguide in m
Lambda0=1e-6;//Vacuum wavelength in m

V=%pi*(d/Lambda0)*sqrt((n1^2)-(n2^2));//Dimensionless normalized film thickness
mprintf("\n V = %.1f",V);

//Let the total number of possible modes be 'N'
N=2*(1 + floor(2*V/%pi));
mprintf("\n N = %d",N);
