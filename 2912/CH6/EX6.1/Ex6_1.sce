//chapter 6
//example 6.1
//Calculate mean free path of electron
//page 146
clear;
clc;
//given
n=8.5E28; // in 1/m^3 (density of electron)
m_e=9.11E-31; // in Kg (mass of electron)
k=1.38E-23; // in J/K (Boltzmann's constant)
e=1.6E-19; // in C (charge of electron)
T=300; // in K (temperature)
p=1.69E-8; // in ohm-m (resistivity)
//calculate
lambda=sqrt(3*k*m_e*T)/(n*e^2*p); // calculation of mean free path
printf('\nThe mean free path of electron is \t=%1.2E m',lambda);
lambda=lambda*1E9; // changing unit from m to nanometer
printf('\n\t\t\t\t\t=%.2f nm',lambda);
// Note: answer in the book is wrong due to printing mistake
