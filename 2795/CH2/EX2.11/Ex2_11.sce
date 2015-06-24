// Scilab Code Ex2.11: Page-64 (2013)
clc; clear;
q = 1.6e-019;    // Charge on an electron, C
V = 25e+003;    // Accelerating potential, volt
K = q*V;    // Kinetic energy of electrons, J
m = 9.11e-031;    // Rest mass of an electron, kg
c = 3.00e+08;    // Speed of light, m/s
// From relativistic kinetic energy formula, K = (gama - 1)*m*C^2, solving for gama
gama = 1 + K/(m*c^2);    // Relativistic factor
bita = sqrt((gama^2-1)/gama^2);    // Boost parameter
u = bita*c;    // Speed of the electrons, m/s
// From non-relativistic expression, K = 1/2*m*u^2, solving for u
u_classical = sqrt(2*K/m);    // Non-relativistic speed of the electrons, m/s
u_error = (u_classical - u)/u_classical*100;    // Percentage error in speed of electrons, m/s
printf("\nThe relativistic speed of the accelerated electrons = %4.2e m/s", u);
printf("\nThe classical speed is about %d percent greater than the relativistic speed", ceil(u_error));

// Result
// The relativistic speed of the accelerated electrons = 9.04e+007 m/s
// The classical speed is about 4 percent greater than the relativistic speed 