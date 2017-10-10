clear;
clc;
printf("\nEx-6.18\n");
//page no.-192
//given
T=0;........//temperature in kelvin
rho=10500;....//density of Ag in Kg/m^3
M=107.9;......//atomic weight
N=6.025*10^26;....//avagadro no.
e=1.6*10^-19;.....//charge
h=6.63*10^-34;....//planck's constant in Js

no=(N*rho)/M......//no of free electrons per unit vol

E=(3*no/%pi)^(2/3)*(h^2)/(8*m*e)......//fermi energy in eV

printf("\nfermi energy is 5.518 eV");
