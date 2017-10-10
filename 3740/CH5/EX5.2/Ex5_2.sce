//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 5.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
h=6.6e-34;//Planck's constant in SI Units
c=3e8;//Speed of light in m/s
lambda=550e-9;//Average wavelength in m
k=1.38e-23;//Boltzmann constant in SI Units
T=300;//Operating temperature in K

//Let the difference between the two energy levels be DeltaE
DeltaE=h*c/lambda;//Difference in energy levels in J
mprintf("\n E2-E1 = %.2f eV",DeltaE/1.6e-19);//Division by 1.6*10^(-19) to convert into eV

//Let the relative population of the energy levels 'N2/N1' be N
N=exp(-DeltaE/(k*T));
mprintf("\n N2/N1 = %.1e",N);//The answer provided in the textbook is wrong
