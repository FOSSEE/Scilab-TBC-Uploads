//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 1.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
m=9.1e-31;//rest mass of electrons in kg
e=1.6e-19;//charge of electrons in C
h=6.62e-34;//Planck's constant in SI Units
Epsilon0=8.85e-12;//permittivity of vaccuum in SI Units

Eion=m*(e^4)/(8*(h*Epsilon0)^2);//Ionization energy of the atom in J
mprintf("Ionization energy of the atom = %.3e J or %f eV",Eion,Eion/1.6e-19);//The answers vary due to round off error
