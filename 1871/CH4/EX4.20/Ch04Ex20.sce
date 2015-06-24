// Scilab code Ex4.20 : Pg:159 (2008)
clc;clear;
D = 10;    // The distance between the slits and the screen, cm
d = 0.2/2;    // Half the separation between two slits, cm
lambda = 6000e-008;    // Wavelength of light used, cm
t = 0.05;    // Thickness of transparent plate, cm
x0 = 0.5;    // The shift of interference pattern, cm
// As x0 = D/(2*d)*(mu - 1)*t, solving for mu
mu = 2*d*x0/(D*t)+1;    // The refractive index of transparent plate
printf("\nThe refractive index of transparent plate = %3.1f", mu);

// Result 
// The refractive index of transparent plate = 1.2 