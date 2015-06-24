// Scilab code Ex8.8: Pg 284 (2005)
clc; clear;
P = 1/2*integrate('z^2*exp(-z)', 'z', 2, 100); // Take some large value of upper limit
printf("\nP(electron in the ground state of hydrogen will be found outside the first Bohr radius) = %4.1f percent", P*100);

// Result
// P(electron in the ground state of hydrogen will be found outside the first Bohr radius) = 67.7 percent 

