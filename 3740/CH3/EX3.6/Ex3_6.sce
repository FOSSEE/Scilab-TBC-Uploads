//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 3.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
nOmega=1.5019;//refractive index corresponding to the ray of frequency Omega
n2Omega=1.4802;//refractive index corresponding to the ray of frequency 2*Omega
Lambda0=0.8e-6;//vacuum wavelength at the fundamental frequency in m 

lc=Lambda0/(4*(nOmega-n2Omega));//Coherence length in m
mprintf("\n lc = %.1e m",lc);//The answers vary due to round off error

