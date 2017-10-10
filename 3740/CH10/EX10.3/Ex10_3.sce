//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 10.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Rs=1.5e13;//Raman shift in Silica in Hz
T=323;//Absolute temperature in K
DeltaT=1;//Change in Temperature in Degree Celsius or K
h=6.6e-34;//Planck's constant in SI Units
k=1.38e-23;//Boltzmann constant in SI Units

DeltaRs=h*Rs*DeltaT/(k*(T^2));
mprintf("\n DeltaRs = %.1e  per Degree Celsius",DeltaRs);
