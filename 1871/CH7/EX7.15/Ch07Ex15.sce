// Scilab code Ex7.15: Pg:311 (2008)
clc;clear;
r = 500;    // Counting rate of Geiger-Muller counter, counts/minute
n = r*1e+08;    // Number of electrons collected per minute
q = n*1.6e-019;    // Charge per minute, coulomb per minute
I = q/60;    // Charge per second, coulomb per second
printf("\nThe average current in the Geiger-Muller counter circuit = %4.2e ampere ", I);

// Result 
// The average current in the Geiger-Muller counter circuit = 1.33e-010 ampere 