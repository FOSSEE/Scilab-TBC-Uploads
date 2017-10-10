//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
eta=0.5;//Dimensionless Quantum efficiency of photocathode
e=1.6e-19;//Electronic charge in C
Plambda=1e-6;//Radiation power incident on the photodiode in W
Lambda0=500e-9;//Wavelength of incident light in m
h=6.6e-34;//Planck's constant in SI Units
c=3e8;//Speed of light in vacuum in m/s

ilambda=eta*e*Plambda*Lambda0/(h*c);//Corresponding current generated in A
mprintf("\n ilambda = %.1e A",ilambda);
