// Scilab Code Ex1.7 : Page:29 (2011)
clc;clear;
m0 = 1;    // For simplicity assume the rest mass of stick to be unity, kg
m = 1.5*m0;    // Mass of the moving stick, kg
L0 = 1;    // Assume resting length of the stick to be unity, m
// As m = m0/sqrt(1-v^2/c^2) = m0*gama, solving for gama
gama = m/m0;    // Relativistic factor
L = L0/gama;    // Contracted length of the metre stick, m
printf("\nThe contracted length of the metre stick = %4.2f m", L);
 
// Result
// The contracted length of the metre stick = 0.67 m 