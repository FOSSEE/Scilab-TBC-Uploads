// Ex6_1 Page:90 (2014)
clc;clear;
a = 2e-010;    // Length of the square well, m
x1 = 0;    // Lower limit of position, m
x2 = 0.25e-010;    // Upper limit of position, m
P = integrate('(sqrt(2/a)*sin(%pi*x/a))^2', 'x', x1, x2); // Probabilitiy of finding the electron in the given region
printf("\nThe probabilitiy of finding the electron in the region x = 0 to 0.25e-010 = %6.4f ", P);

// Result 
// The probabilitiy of finding the electron in the region x = 0 to 0.25e-010 = 0.0125 