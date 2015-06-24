// Scilab Code Ex3a.b.7: Page-142 (2008)
clc; clear;
t = 10;    // Time during which the amplitude reduces to 1/10th of its undamped value, s
f = 200;    // Frequency of oscillations of the system, Hz
omega0 = 2*%pi*f;    // Angular frequency of the oscillations, rad/s
A0 = 1;    // Assume the amplitude of undamped oscillations to be unity, cm
// As A = A0*exp(-k*t), solving for k
A = A0/10;    // Amplitude of damped oscillations after 10 sec, cm
k = log(A0/A)/t;    // Resisting force per unit mass per unit velocity, nepers/sec
tau = 1/(2*k);    // Relaxation time, sec
Q = omega0*tau;   // Quality factor
E0 = 1;    // Assume energy of undamped oscillations to be unity, erg
E = E0/10;    // Energy of damped oscillations after t sec, erg
// As E = E0*exp(-2*k*t), solving for t
t = 1/(2*k)*log(E0/E);    // Time during which the energy falls to 1/10 of its initial value, sec
printf("\nThe relaxation time = %4.2f sec", tau);
printf("\nThe quality factor, Q = %d", Q);
printf("\nThe time during which the energy falls to 1/10 of its initial value = %d sec", t);
printf("\nThe damping constant, k = %4.2f", k);

// Result
// The relaxation time = 2.17 sec
// The quality factor, Q = 2728
// The time during which the energy falls to 1/10 of its initial value = 5 sec
// The damping constant, k = 0.23 
// The answer for Q is given wrongly in the textbook