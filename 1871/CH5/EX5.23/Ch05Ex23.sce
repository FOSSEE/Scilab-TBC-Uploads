// Scilab code Ex5.23: Pg:232 (2008)
clc;clear;
Lambda = 5600e-08;    //Mean wavelength of light, cm
a = 101.6;    // Diameter of the objective of a telescope, cm
theta_1 = 1.22*Lambda/a;    // The smallest angular separation of two stars in seconds resolved by a telescope, radian
theta = theta_1*(180/%pi)*60*60;    // Smallest angular separation of two stars in seconds resolved by a telescope, second
printf("\nThe smallest angular separation of two stars in seconds resolved by a telescope = %4.2f second", theta);

// Result 
// The smallest angular separation of two stars in seconds resolved by a telescope = 0.14 second 