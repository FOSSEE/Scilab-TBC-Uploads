// Scilab Code Ex6.2: : Page-6.19 (2009)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E_F = 2.0*e;    // Fermi level of Po, J
m = 9.1e-031;   // Mass of an electron, kg
// As E_F = 1/2*m*v^2, solving for v
v = sqrt(2*E_F/m);    // Velocity of electron at Fermi level, m/s    
printf("\nThe Velocity of electron at Fermi level = %4.2e m/s", v);

// Result 
// The Velocity of electron at Fermi level = 8.39e+05 m/s 
