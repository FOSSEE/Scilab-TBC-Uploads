// Scilab Code Ex3d.4: Page-206 (2008)
clc; clear;
lambda1 = 5890e-008;    // Wavelength of D1 line of sodium lamp, cm
lambda2 = 5896e-008;    // Wavelength of D2 line of sodium lamp, cm
d_lambda = lambda2 - lambda1;    // Wavelength difference, cm
w = 0.5;    // Width of the grating, cm
N = 2500;    // Total number of grating lines
N_prime = N/w;    // Number of lines per cm, lines/cm
a_plus_b = 1/N_prime;    // Grating element, cm
n = 1;    // Order of diffraction
// Case 1
theta = asind(n*lambda1/a_plus_b);    // Angle of diffraction for D1 line, degree
// Case 2
theta_prime = asind(n*lambda2/a_plus_b);    // Angle of diffraction for D2 line, degree
printf("\nThe angle of diffraction for D1 and D2 lines of sodium are %5.2f dgree and %5.2f degree respectively.", theta, theta_prime);
// From the condition for just resolution, lambda/d_lambda = n*N, solving for N
N_min = lambda1/(d_lambda*n);    // Minimum number of lines required on the grating
if N_min < N then
    printf("\nThe two lines are well resolved.");
else
    printf("\nThe two lines are not resolved.");
end

// Result
// The angle of diffraction for D1 and D2 lines of sodium are 17.13 dgree and 17.15 degree respectively.
// The two lines are well resolved. 