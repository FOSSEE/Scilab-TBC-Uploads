//Chapter 2: Spectroscopy and Photochemistry
//Problem: 4
clc;

//Declaration of Constant
e = 4000       // Extinction coeff.,in dm cube per mol per cm

// Variable
x = 3          // Solution thickness,in cm

// Solution
A = log10(1 / 0.3)     // Absorbance
C = A / (e * x)

mprintf("The concentration of the solution is %.2e mol per dm cube",C)
