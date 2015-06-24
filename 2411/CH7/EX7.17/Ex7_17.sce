// Scilab Code Ex7.17: Page-383 (2008)
clc; clear;
d = 3.02945e-010;    // Atomic apacing in the calcite crystal, m
lambda_alpha = 0.563e-010;    // Wavelength of the K-alpha line of Ag, m
n = 1;    // Order of diffraction
theta = asind(n*lambda_alpha/(2*d));    // Angle of reflection for the first order, degree
theta_max = 90;    // Angle of reflection for the highest order, degree
n = 2*d*sind(theta_max)/lambda_alpha;    // The highest order for which the line may be observed
printf("\nThe angle of reflection for the first order = %4.2f degree", theta);
printf("\nThe highest order for which the line may be observed = %d", n);

// Result
// The angle of reflection for the first order = 5.33 degree
// The highest order for which the line may be observed = 10 