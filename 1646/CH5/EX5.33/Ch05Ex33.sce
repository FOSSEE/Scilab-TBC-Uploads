// Scilab Code Ex5.33: Page:313 (2011)
clc;clear;
i = 60;    // Angle of incidence, degrees
mu = tand(i);    // Brewester's Law to calculate refractive index
A = 60;....// Angle of prism, degrees
// As mu = sind((A+delta_m)/2)/sind(A/2), solving for delta_m
delta_m = 2*asind(mu*sind(A/2))-A;    // Angle of minimum deviation for green light for its passage through a prism, degrees
printf("\nThe angle of minimum deviation for green light for its passage through a prism = %2d degrees", ceil(delta_m));

// Result
// The angle of minimum deviation for green light for its passage through a prism = 60 de
