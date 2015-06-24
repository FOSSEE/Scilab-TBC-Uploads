// Scilab Code Ex5.35: Page:313 (2011)
clc;clear;
theta = 9.9;....// Optical rotation of solution, degrees
l = 20;....// Length of the tube, cm
S = 66;....// Specific rotation of pure sugar solution, degree per dm-(g/cc)
// As the specific rotation, S = 10*theta/l*c, solving for c
c = 10*theta/(l*S);    // Concentration of solution for pure sugar, g/cc
c_prime = 0.080;    // Concentration of solution for impure sugar, g/cc
Percentage_purity = c*100/c_prime;    // Percentage purity of sugar sample
printf("\nThe percentage_purity of the sugar sample = %5.2f percent", Percentage_purity);

// Result
// The percentage_purity of the sugar sample = 93.75 percent 
