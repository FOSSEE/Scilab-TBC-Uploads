// Scilab Code Ex5.40: Page:316 (2011)
clc;clear;
theta = 20;....// Optical rotation of sugar solution, degrees
theta_prime = 35;....// New optical rotation of sugar solution, degrees
c = 5;....// Percentage concentration of the solution
c_prime = 10;  // New percentage concentration of the solution
l = 1;       // For simplicity assume length of the sugar solution to be unity
l_prime = theta_prime*l*c/(c_prime*theta);
printf("\nThe length of sugar solution for %d percent concentration and %d degrees optical rotation = %5.3f*l ", c_prime, theta_prime, l_prime);

// Result
// The length of sugar solution for 10 percent concentration and 35 degrees optical rotation = 0.875*l  

