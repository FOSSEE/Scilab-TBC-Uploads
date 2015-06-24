// Scilab Code Ex1.13: Page:32 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, m/s
E0 = 0.5;    // Rest energy of the electron, MeV
v1 = 0.6*c;    // Initial velocity of the electron, m/s
v2 = 0.8*c;    // Final velocity of the electron, m/s
W = (1/sqrt(1-v2^2/c^2)-1/sqrt(1-v1^2/c^2))*E0;    // The amount of work to be done to increase the speed of the electron, MeV
printf("\nThe amount of work to be done to increase the speed of an electron = %4.2e J", W*1e+06*1.6e-019);

// Result
// The amount of work to be done to increase the speed of an electron = 3.33e-014 J 