// Scilab code Ex4.24 : Pg:160 (2008)
clc;clear;
lambda = 5.9e-005;    // Wavelength of light, cm
lambda_prime = 7.5e-005;    // Chamged wavelength of light, cm
t = 0.002;    // Thickness of mica sheet, cm
mu = 1.5;    // Refractive index of mica
x0 = 0.237;    // Position of zeroth order fringe, cm
x10 = 0.355;    // Position of tenthth order fringe, cm
omega = (x10-x0)/10;    // Fringe width with original pattern, cm
// As omega = lambda*D/(2*d), so
omega_prime = omega*lambda_prime/lambda;    // New fringe width with changed wavelength, cm
x10_prime = x0+10*omega_prime;    // Position of tenth order fringe due to changed wavelength, cm
x_0 = omega/lambda*(mu - 1)*t;    // Shift in the zeroth fringe, cm
dx0 = [x_0 -x_0];
x0_prime = x0+dx0;    // Position of the zeroth order fringe due to changed path length, cm
printf("\nThe position of tenth order fringe due to changed wavelength = %4.2f mm", x10_prime*10);
printf("\nThe position of the zeroth order fringe due to changed path length = %4.2f mm or %4.2f mm", x0_prime(1)*10, x0_prime(2)*10);

// Result 
// The position of tenth order fringe due to changed wavelength = 3.87 mm
// The position of the zeroth order fringe due to changed path length = 4.37 mm or 0.37 mm 