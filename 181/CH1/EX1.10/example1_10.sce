//Position of Fermi energy at 0K
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-10 in page 34

clear; clc; close;

// Data given
h=1.5*10^-34; // Constant of calculation in Js
m_c=0.067*0.91*10^-30; // Effective mass of conduction electron in Kg
n_0=10^24; // Electron concentration at 0K /m^3

// Calculation
E_f= ((h^2*(3*%pi^2*n_0)^(2/3))/(2*m_c));
A=E_f/(1.6*10^-19);

printf("Position of Fermi level at 0K is %0.4f eV",A);

// Result
// Fermi energy at 0K as measured from edge of conduction band is 0.11 eV
// Fermi energy is placed 0.11 eV above the edge of conduction band
// Fermi energy is within the conduction band