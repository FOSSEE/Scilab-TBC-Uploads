// chapter 9
// example 9.12
// Find the diffusion co-efficient of electron in silicon
// page 277
clear;
clc;
//given
ue=0.19; // in m^2/V-s (mobility of electron)
T=300; // in K (temperature)
k=1.38E-23; // in J/K (Boltzmann’s constant)
e=1.6E-19; // in C(charge of electron)
//calculate
Dn=ue*k*T/e; // calculation of diffusion co-efficient
printf('\nThe diffusion co-efficient of electron in silicon is \tDn=%1.1E m^2/s',Dn);
