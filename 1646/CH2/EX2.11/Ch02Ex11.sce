// Scilab Code Ex2.11: Page:83 (2011)
clc;clear;
m0 = 1.67e-27;....// Rest mass,in kg
a = 1e-14;....//  Size of the box
h = 6.63e-34;....// Planck's constant,in J-s
n = 1;  // Quantum number for lowest energy state
E_n = n^2*h^2/(8*m0*a^2);
printf("\nThe lowest energy of the neutron confined to the nucleus = %4.2e J", E_n);
 
// Result
// The lowest energy of the neutron confined to the nucleus = 3.29e-13 J 
