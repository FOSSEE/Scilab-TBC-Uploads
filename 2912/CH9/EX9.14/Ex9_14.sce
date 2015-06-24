// chapter 9
// example 9.14
// Find the ratio of conductivity at 600K and at 300K
// page 278
clear;
clc;
//given
Eg=1.2; // in eV (Energy band gap)
k=1.38E-23; // in J/K (Boltzmann’s constant)
T1=600, T2=300; // in K (two temperatures)
e=1.6E-19; // in C (charge of electron)
// calculate
Eg=Eg*e; // changing unit from eV to Joule
// since sigma is proportional to exp(-Eg/(2*k*T))
// therefore ratio=sigma1/sigma2=exp(-Eg/(2*k*((1/T1)-(1/T2))));
ratio= exp((-Eg/(2*k))*((1/T1)-(1/T2))); // calculation of ratio of conductivity at 600K and at 300K
printf('\nThe ratio of conductivity at 600K and at 300K is \t%1.2E',ratio);
