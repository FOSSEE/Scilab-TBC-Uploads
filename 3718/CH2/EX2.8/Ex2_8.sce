//Chapter 2: Spectroscopy and Photochemistry
//Problem: 8
clc;

//Declaration of Constant
e = 8000       // Molar absorbtion coeff,in dm cube per mol per cm

//Declaration of Variable
l = 2.5        // Thickness of solution,in cm

// Solution
C = log10(1 / 0.3) / (e * l)

mprintf("The concentration of Solution from Lambert-Beer Law is %.2e mol per dm cube",C)
