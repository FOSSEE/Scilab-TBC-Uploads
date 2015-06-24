// Scilab code Ex4.34: : Pg:188 (2008)
clc;clear;
Lambda = 5896e-08;    // Wavelength of light, cm
d = 0.3;    // Path difference between the M1 and M2 mirrors, cm
r = 0;    // For central bright fringe
// Since 2*d*cos(r) = n*Lambda and for r = 0 which gives 2*d = n*Lambda
// 2*d*cos_theta = (n-6)*Lambda, solving for theta
theta = acosd(1-6*Lambda/(2*d));    // Angular radius of the seventh bright fringe, degree
D = 2*theta;    // Angular diameter of the seventh bright fringe, degree
printf("\nThe angular diameter of 7th bright fringe = %1.0f degree", D);

// Result 
// The angular diameter of 7th bright fringe = 4 degree 