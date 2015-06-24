// Calculate E-k relation of conduction electrons
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-3 in page 20

clear; clc; close;

// Data given
m_c=0.1*0.91*10^-30; // Effective mass of conduction electron in kg
k=0.3*10^10; // Wave vector in /m
h=1.05*10^-34; // Constant of calculation in Js

// Calculation
E= (h^2*k^2)/(2*m_c);
A= E/(1.6*10^-19);

printf("Energy of conduction electrons = %0.1f eV",A);

// Result
//Energy of the conduction electrons in vertically upward direction is 3.4 eV