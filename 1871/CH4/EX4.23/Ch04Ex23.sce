// Scilab code Ex4.23 : Pg:159 (2008)
clc;clear;
a = 1;    // Assume amplitude of the wave from coherent sources to be unity
D = 1;    // The distance between the slits and the screen, m
d = 5e-004/2;    // Half the separation between two slits, m
mu = 1.5;    // The refractive index of glass plate
t = 1.5e-006;    // Thickness of glass plate, m
lambda = 5000e-010;    // Wavelength of light used, m
x0 = D/(2*d)*(mu - 1)*t;    // The lateral shift of central fringe, m
delta = (mu - 1)*t;    // Path difference created due to the introduction of the thin glass plate, m
kro_delta = 2*%pi/lambda*delta;    // Phase difference, rad
a1 = a, a2 = a;    // Amplitude of waves from coherent sources
I = a1^2 + a2^2 + 2*a1*a2*cos(kro_delta);    // Intensity of central fringe
printf("\nThe lateral shift of central fringe = %4.2f cm", x0*100);
printf("\nThe intensity of central fringe = %d", I);

// Result 
// The lateral shift of central fringe = 0.15 cm
// The intensity of central fringe = 0 
// The first answer is given wrong in the textbook