//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 3.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
w=10e-3;//Width of the KD*P crystal in m
r=26.4e-12;//Linear electro-optic coefficient of the crystal in m/V
n0=1.51;//refractive index of the crystal
E=4000;//Applied voltage in V

//Let the change in refractive index be Deltan = |n-n0|
Deltan=(1/2)*r*E*(n0^3)/w;//Dimensionless change in refractive index of the crystal
mprintf("The change in refractive index of the crystal = %.1e",Deltan);
