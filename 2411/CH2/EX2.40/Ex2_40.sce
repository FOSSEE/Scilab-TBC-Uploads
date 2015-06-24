// Scilab Code Ex2.40: Page-96 (2008)
clc; clear;
mu_0 = 4*%pi*1e-007;    // Absolute magnetic permeability of free space, N/ampere-square
I1 = 30;    // Current through the first wire, A 
I2 = 40;    // Current through the second wire, A 
x = 2;    // Separation distance between two wires, m
F = mu_0/(4*%pi)*2*I1*I2/x;    // Force between two current carrying straight wires, N
printf("\nThe force between two current carrying straight wires = %3.1e N", F);

// Result
// The force between two current carrying straight wires = 1.2e-004 N 