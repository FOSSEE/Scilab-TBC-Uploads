// Scilab code Ex5.2: Pg 154 (2005)
clc; clear;

// Part (b)
h = 6.63e-34;     // Plank's constant, Js
m_e = 9.11e-31;   // Mass of electron, kg
q = 1.6e-19;     // Charge on electron, C
V = 50;    // Electric potential applied, V
lamda = h/(sqrt(2*m_e*q*V));     // de Broglie wavelength of an electron, m
printf("\nde Broglie wavelength of an electron = %3.1f angstrom", lamda/1e-10);

// Result
// de Broglie wavelength of an electron = 1.7 angstrom 
