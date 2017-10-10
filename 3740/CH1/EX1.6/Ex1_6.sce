//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 1.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
v0=1.1e15;//threshold frequency of light in Hz
e=1.6e-19;//charge of electrons in C
h=6.62e-34;//Planck's constant in SI Units

phi=h*v0/e;//work function of the metal in eV
mprintf("Phi = %.1f eV",phi);//The answers vary due to round off error
