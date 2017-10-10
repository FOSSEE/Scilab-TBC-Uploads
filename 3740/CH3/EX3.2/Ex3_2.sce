//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 3.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
lambda=1.06e-6;//Wavelength at which half-wave voltage is to be calculated, in m
r=10.6e-12;//Linear electro-optic coefficient of KDP crystal in m/V
n0=1.51;//refractive index of the crystal

Vpi=lambda/(2*r*(n0^3));//Half-wave voltage for the crystal in V
mprintf("The half-wave voltage of the crystal = %.1f kV",Vpi/1e3);//Division by 10^3 to convert into kV
