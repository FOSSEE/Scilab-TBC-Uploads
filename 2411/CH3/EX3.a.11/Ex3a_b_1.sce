// Scilab Code Ex3a.b.1: Page-138 (2008)
clc; clear;
m = 100;    // Mass of the horizontal disc, g
t = 60;    // Time during which the amplitude reduces to half of its undamped value, s
f = 10;    // Frequency of oscillations of the system, Hz
omega_prime = 2*%pi*f;    // Angular frequency of the oscillations, rad/s
A0 = 1;    // Assume the amplitude of undamped oscillations to be unity, cm
// As A = A0*exp(-k*t), solving for k
A = A0/2;    // Amplitude of damped oscillations after 1 min, cm
k = log(A0/A)/t;    // Resisting force per unit mass per unit velocity, nepers/sec
r = 2*k*m;    // Resistive force constant, sec/cm
tau = 1/k;    // Relaxation time, sec
Q = m*omega_prime/r;    // Quality factor
s = m*(omega_prime^2 + k^2);    // Force constant of the spring, dynes/Sq.cm
printf("\nThe resistive force constant = %4.2f dyne-sec/cm", r);
printf("\nThe relaxation time of the system = %4.2f sec", tau);
printf("\nThe quality factor, Q = %4.2f", Q);
printf("\nThe force constant of the spring = %4.2e dyne/Sq.cm", s);

// Result
// The resistive force constant = 2.31 dyne-sec/cm
// The relaxation time of the system = 86.56 sec
// The quality factor, Q = 2719.42
// The force constant of the spring = 3.95e+005 dyne/Sq.cm 