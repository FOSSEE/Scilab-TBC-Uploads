// Scilab code: Ex4.4 : Zero point energy of a system : Pg: 126 (2008)
h = 6.626e-034;    // Planck's constant, Js
x = 1e-02;    // Displacement of the spring about its mean position, m
F = 1e-02;    // Force applied to the spring-mass system, N
m = 1e-03;    // Mass of attached to the spring, kg
// As F = k*x, k = 4*%pi^2*f^2*m is the stiffness constant, solving for f, 
f = sqrt(F/(4*%pi^2*m*x));    // Frequency of oscillations of mass-spring system, Hz
U = 1/2*h*f;    // Zero point energy of the mass-spring system, J
printf("\nThe zero point energy of the mass-spring system = %4.2e J", U);
// Result
// The zero point energy of the mass-spring system = 1.67e-033 J