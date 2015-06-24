// Scilab Code Ex1.14: Page:33 (2011) 
clc;clear;
c = 1;    // Assume speed of light in vacuum to be unity, unit
m0 = 1;    // For simplicity assume rest mass of the particle to be unity, unit
v = c/sqrt(2);    // Given speed of the particle, m/s
gama = 1/sqrt(1-v^2/c^2);    // Relativistic factor
m = gama*m0;   // The relativistic mass of the particle, unit
p = m*v;    // The relativistic momentum of the particle, unit
E = m*c^2;    // The relativistic total eneryg of the particle, unit
E_k = (m-m0)*c^2;    // The relativistic kinetic energy of the particle, unit
printf("\nThe relativistic mass of the particle = %5.3fm0", m);
printf("\nThe relativistic momentum of the particle = %1.0gm0c", p);
printf("\nThe relativistic total energy of the particle = %5.3fm0c^2", E);
printf("\nThe relativistic kinetic energy of the particle = %5.3fm0c^2", E_k);

// Result
// The relativistic mass of the particle = 1.414m0
// The relativistic momentum of the particle = 1m0c
// The relativistic total energy of the particle = 1.414m0c^2
// The relativistic kinetic energy of the particle = 0.414m0c^2 