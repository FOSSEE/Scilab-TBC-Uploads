//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of fiber core
n2=1.46;//Dimensionless refractive index of fiber cladding
Lambda0=1e-6;//Wavelength in m

//For single mode guide, let the core thickness be less than dmax 
dmax=Lambda0/(2*sqrt(n1^2 - n2^2));
mprintf("\n d < %.2f um",dmax/1e-6);//Dividing by 10^(-6) to convert to um
