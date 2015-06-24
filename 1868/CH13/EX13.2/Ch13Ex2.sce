// Scilab code Ex13.2: Pg 468 (2005)
clc; clear;
r0 = 1.2e-015;  // Nuclear mean radius, m
m = 1.67e-027;  // Mass of the nucleon, kg
rho_0 = 3*m/(4*%pi*r0^3);   // Density of the nucleus, kg per metre cube
printf("\nThe mass of the nucleus = Am approx.");
printf("\nThe volume of the nucleus = 4/3*pi*r0^3*A");
printf("\nThe density of the nucleus = %3.1e kg per metre cube", rho_0);

// Result
// The mass of the nucleus = Am approx.
// The volume of the nucleus = 4/3*pi*r0^3*A
// The density of the nucleus = 2.3e+17 kg per metre cube 
