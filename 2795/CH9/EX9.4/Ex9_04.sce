// Scilab Code Ex9.4: Page-310 (2014)
clc; clear;
m = 1;    // For simplicity assume mass of gas molecule to be unity, kg
k = 1.38e-023;    // Boltzmann constant, J/K
T = 293;    // Room temperature, K
bita = k*T;    // Energy associated with three degrees of freedom, J
v_mps = sqrt(2/(bita*m));    // For simplcity assume most probable speed to be unity, m/s
C = (bita*m/(2*%pi))^(3/2);    // Constant in the distribution function
P = integrate('4*%pi*C*exp(-1/2*bita*m*v^2)*v^2', 'v', 0.99*v_mps, 1.01*v_mps);
printf("\nThe fraction of molecules in an ideal gas in equilibrium which have speeds within 1 percent above and below the most probable speed = %5.3f", P);

// Result
// The fraction of molecules in an ideal gas in equilibrium which have speeds within 1 percent above and below the most probable speed = 0.017 