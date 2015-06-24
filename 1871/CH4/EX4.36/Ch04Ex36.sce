// Scilab code Ex4.36: : Pg:188 (2008)
clc;clear;
x = 0.0289;    // Distance traversed by the mirror between two successive disappearances, cm
Lambda = 5890e-08;    // Wavelength of light, cm
delta_Lambda = Lambda^2/(2*x);    // Difference in the wavelengths of the D1 and D2 lines of the sodium lamp, cm
printf("\nThe difference in the wavelengths of the D1 and D2 lines of the sodium lamp = %1.0e cm", delta_Lambda);

// Result 
// The difference in the wavelengths of the D1 and D2 lines of the sodium lamp = 6e-008 cm 