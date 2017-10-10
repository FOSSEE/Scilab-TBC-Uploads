//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 5.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
h=6.6e-34;//Planck's constant in SI Units
nu=5e14;//Average frequency in Hz
k=1.38e-23;//Boltzmann constant in SI Units
T=2000;//Operating temperature in K

R=exp(h*nu/(k*T))+1;//Dimensionless ratio of rates of spontaneous and stimulated emissions
mprintf("\n R = %.1e",R);//The answers vary due to round off error
