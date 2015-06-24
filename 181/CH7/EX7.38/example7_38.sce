// Find the values of Rs and Rd
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-38 in page 341

clear; clc; close;

// Given data
Id=1.5*10^-3; // Drain current in mA
Vds=10; // Drain-source voltage in V
Idss=5*10^-3; // Drain-source current in mA
Vp=-2; // Pinch off voltage in V
Vdd=20; // Drain voltage in V

// Calculation
Vgs=2*(sqrt(1.5/5)-1);
Vs=-Vgs;
Rs=Vs/Id;
Rd=(20-10.9)/Id;
printf("Rs = %0.1e ohms\nRd = %0.2e ohms",Rs,Rd);

// Result
// Rs = 0.6 K-ohms
// Rd = 6.06 K-ohms