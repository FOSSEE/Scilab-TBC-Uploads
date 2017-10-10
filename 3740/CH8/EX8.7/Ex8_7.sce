//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.7
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of fiber core
n2=1.46;//Dimensionless refractive index of fiber cladding
L=1e3;//Length of fiber in m
c=3e8;//Speed of light in vacuum in m/s

Delta=(n1^2 - n2^2)/(2* n1^2);
mprintf("\n Delta = %.4f",Delta);

DeltaTGI=L/c*Delta/8;//Intermodal dispersion in s
mprintf("\n DeltaTGI = %.2e s",DeltaTGI);
//The answers vary due to round off error
