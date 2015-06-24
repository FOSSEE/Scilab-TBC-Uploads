// Scilab Code Ex1.11: Page:31 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, m/s
E0 = 1;    // Rest energy of particle, unit
E = 3*E0;    // Energy of relativistically moving particle, unit
// E = m*c^2 and E0 = m0*c^2
// With m = m0/sqrt(1-v^2/c^2), we have
v = c*sqrt(1-(E0/E)^2);    // Velocity of the moving particle, m/s
printf("\nThe velocity of the moving particle = %4.2e m/s", v);

// Result
// The velocity of the moving particle = 2.83e+008 m/s 