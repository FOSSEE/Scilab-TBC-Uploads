// Scilab code Ex4.12: Pg:149 (2008)
clc;clear;
Lambda = 6500e-007;    // Wavelength of light, mm
Lambda_prime = 5200e-007;    // New wavelength of light, mm
n = 3;    // Order of bright fringe
D = 1200;    // Distance between the source and the slits, mm
d = 2/2;    // Separation between teh slits, mm
x3 = n*Lambda*D/(2*d);    // The distance of the third bright fringe from the central maximum, mm
n = 5;        // Minimum value of n 
m = Lambda_prime/Lambda*n;    // Minimum value of m 
x4 = m*Lambda*D/(2*d);    // The least distance from the central maximum at which bright fringes duw to both the wavelengths coincide, mm
printf("\nThe distance of the third bright fringe from the central maximum = %4.2f mm", x3);
printf("\nThe least distance from the central maximum at which bright fringes duw to both the wavelengths coincide = %5.3f cm", x4/10);

// Result 
// The distance of the third bright fringe from the central maximum = 1.17 mm
// The least distance from the central maximum at which bright fringes duw to both the wavelengths coincide = 0.156 cm 