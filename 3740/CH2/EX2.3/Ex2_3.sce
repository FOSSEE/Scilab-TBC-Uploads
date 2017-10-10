//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 2.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
m=9.1e-31;//rest mass of electrons in kg
me=0.55*m;//effective mass of electrons in kg
h=6.62e-34;//Planck's constant in SI Units
k=1.38e-23;//Boltzmann's constant in SI Units
T=300;//temperature of the source in K

Nc=2*(2*%pi*me*k*T/(h^2))^(3/2);//effective density of states in the conduction band
mprintf("Nc = %.2e m^(-3)",Nc);//The answers vary due to round off error
