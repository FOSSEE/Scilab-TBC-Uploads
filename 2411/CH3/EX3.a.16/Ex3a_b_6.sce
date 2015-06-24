// Scilab Code Ex3a.b.6: Page-141 (2008)
clc; clear;
m = 0.1;    // Mass of the oscillating body, kg
t = 50;    // Time during which the energy of system decays to 1/e of its undamped value, s
s = 10;    // Spring constant, N/m
E0 = 1;    // Assume the energy of undamped oscillations to be unity, erg
// As E = E0*exp(-k*t) and E/E0 = 1/e,  solving for k
E = E0/%e;    // Energy of damped oscillations after 50 sec, erg
k = log(E0/E)/t;    // Resisting force per unit mass per unit velocity, nepers/sec
p = m*k;    // A resistive force constant, N-s/m
omega0 = sqrt(s/m);    // Angular frequency in the absence of damping, rad/sec
omega_prime = sqrt(omega0^2 - k^2/4);    // Angular frequency when damping takes place, rad/sec
Q = omega_prime/k;    // Quality factor
printf("\nThe resistive force constant, p = %1.0e N-s/m", p);
printf("\nThe quality factor, Q = %d", ceil(Q));

// Result
// The resistive force constant, p = 2e-003 N-s/m
// The quality factor, Q = 500 