//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of fiber core
n2=1.46;//Dimensionless refractive index of fiber cladding
n0=1;//Dimensionless refractive index of air
a=100e-6;//Core radius in m
Lambda0=900e-9;//Vacuum wavelength in m

V=2*%pi*(a/Lambda0)*sqrt((n1^2)-(n2^2));//Dimensionless normalized film thickness
mprintf("\n V = %.1f",V);

N=(V^2)/2;//Number of modes of propagation
mprintf("\n N = %d",N);
