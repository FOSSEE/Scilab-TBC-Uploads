//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 9.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Lambda0=0.63e-6;//Wavelength in m
Deltan=6e-3;//Dimensionless Change in refractive index of titanium
n1=2.286;//Ordinary dimensionless refractive index of Titanium 

n2=n1-Deltan;//Changed dimensionless refractive index of titanium
NA=sqrt(n1^2 - n2^2);//Corresponding dimensionless numerical aperture
mprintf("\n NA = %.3f",NA);
