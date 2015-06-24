// Scilab Code Ex5.38: Page:315 (2011) 
clc;clear;
theta = 13;....// Optical rotation of the solution, degrees
l = 20;....// Length of the tube, cm
l_prime = 30;....// New length of the tube, cm
c = 1;    // For simplicity assume concentration of sugar solution to be unity, g/cc
c_prime = c/3;    // New concentration of sugar solution, g/cc
// As, S = 10*theta/(l*c) so 10*theta/(l*c) = 10*theta_prime/(l_prime*c_prime)
// Solving for theta_prime
theta_prime = theta/(l*c)*l_prime*c_prime;    // The optical rotation produced by new length of sugar solution, degrees
printf("\nThe optical rotation of %d cm length of sugar solution = %3.1f degrees", l_prime, theta_prime);

// Result
// The optical rotation of 30 cm length of sugar solution = 6.5 degrees 
