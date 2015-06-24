// Maximum and minimum Zener currents
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-31 in page 110

clear; clc; close;

// Given data
V_z=10; // Zener voltage in V
R_s=1*10^3; // Shunt resistance in K-ohm
R_l=10*10^3; // Load resistance in K-ohm
Vi_max=40; // Maximum input voltage in V
Vi_min=25; // Minimum input voltage in V

// Calculation
I_zmax=((Vi_max-V_z)/1000)-(5*10^-3);
I_zmin=((Vi_min-V_z)/R_s)-(5*10^-3);

printf("Maximum value of zener current = %0.2e A\n",I_zmax);
printf("Minimum value of zener current = %0.2e A",I_zmin);

// Result
// Maximum zener current = 25 mA
// Minimum zener current = 10 mA