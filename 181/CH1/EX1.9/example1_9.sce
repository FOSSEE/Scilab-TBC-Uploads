// Find Fermi level at room temperature
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-9 in page 34

clear; clc; close;

// Data given
k=1; // Assumed constant 
m_e=2*k; // Effective mass of an electron in Kg
m_h=k; // Effective mass of only heavy hole in Kg
k_bT=0.026; // Expressed in eV at room temperature

// Calculation
E_f=(3/4)*0.026*log(m_e/m_h);
printf("E_f = ((-E_g/2) - %0.3f) eV\n",E_f);
printf("Thus Fermi level is below center of forbidden gap by 0.014 eV");

// Result
// Fermi level in the intrinsic semiconductor is ((-E_g/2) - 0.014) eV