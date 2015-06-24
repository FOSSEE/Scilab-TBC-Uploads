// Scilab Code Ex9.4 Page:280 (2006)
clc;clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E_g = 3.4e-04;    // Energy gap of aluminium, eV
v_F = 2.02e+08;    // Fermi velocity of aluminium, cm/sec
h_bar = 1.05e-034;    // Planck's constant
L = h_bar*v_F/(2*E_g*e);    // Coherence Length of aluminium, cm

printf("\nThe coherence length of aluminium = %4.2e cm", L);

// Result 
// The coherence length of aluminium = 1.95e-04 cm 
