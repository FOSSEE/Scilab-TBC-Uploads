//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 2.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Lz=10e-9;//Thickness of a GaAs quantum well in m
m=9.1e-31;//Rest mass of an electron in kg
me=0.068*m;//Mass of electrons in conduction band
mh=0.56*m;//Mass of electrons in valence band
h=6.62e-34;//Planck's constant in SI Units

DeltaEg=(h^2)/(8*(Lz)^2)*(1/me+1/mh);//Energy gap in the GaAs quantum well
mprintf("DeltaEg = %.2e J",DeltaEg);
