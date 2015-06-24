// Scilab code Ex4.5: Pg 118 (2008)
clc; clear;
I = 0.4;                  // Current, A
N = 550;                  // Number of turns in a coil
d = 8e-02;                // Diameter, m
l = (%pi*d);              // Average length of the magnetic circuit, m
// Since magnetic field strength is defined as the mmf per metre length of the magnetic circuit, therefore, we have
H = (N*I)/l;                // Magnetic field strength, At/m
printf("\nThe magnetic field strength inside the toroid = %6.2f At/m", H);

// Result
// The magnetic field strength inside the toroid = 875.35 At/m 
