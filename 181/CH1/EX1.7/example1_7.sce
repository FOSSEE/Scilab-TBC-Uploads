// Energies of electrons in conduction band
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-7 in page 22

clear; clc; close;

// Data given
k=0.01*10^10; // k-vector value /m
h=1.05*10^-34; // Constant of calculation Js
m_0=0.91*10^-30; // Mass of conduction electron Kg
m_c1=0.067*m_0; // Effective mass of GaAs conduction electron Kg
m_c2=0.01*m_0; // Effective mass if InAs conduction electron Kg

// Calculation
E_1=(h^2*(9*k^2))/(2*m_c1);
A_1=(E_1)/(1.6*10^-19);

printf("(a)Energy of conduction electron in GaAs = %0.2e eV\n",A_1);

E_2=(h^2*(9*k^2))/(2*m_c2);
A_2=(E_2)/(1.6*10^-19);

printf("(b)Energy of conduction electron in InAs = %0.3e eV",A_2);

// Results
// (a) Energy of conduction electron in GaAs is 50.9 meV
// (b) Energy of conduction electron in InAs is 340.7 meV
