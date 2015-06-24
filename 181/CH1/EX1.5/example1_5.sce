// Energies of electrons in conduction band
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-5 in page 21

clear; clc; close;

// Data given
h=1.05*10^-34; // Constant of calculation Js
k=0.1,0.1,0,0; // Values of k-vector
m_c=0.067*0.091*10^-30; // Effective mass of conduction electron

// Calculation
E=(h^2*(((0.1*10^10)^2)+((0.1*10^10)^2)))/(2*m_c);
A= E/(1.6*10^-19);

printf("Energy of conduction electron is %0.3f eV",A);

// Result
// Energy of conduction electron in the vertically upward direction = 11.302 eV
// The non parabolic E-k dispersion relation is more appropriate here