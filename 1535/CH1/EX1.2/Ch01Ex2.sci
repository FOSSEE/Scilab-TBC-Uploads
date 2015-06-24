// Scilab Code Ex1.2 : Page-23 (2010)
T = 0.1;    // Time period of oscillation in SHM, s
x = 0.2;    // Position of the particle from its mean position, cm
A = 4;    // Amplitude of the particle executing SHM, cm
// As T = 2*%pi/omega, solving for omega
omega = 2*%pi/T;    // Angular speed of particle executing SHM, per sec
a = omega^2*x;    // Accelertion of particle executing SHM, cm per sec square
v_max = omega*A;    // Maximum velocity of the particle in SHM, cm per sec
printf("\nThe accelertion of particle executing SHM = %5.1f cm per sec square", a);
printf("\nThe maximum velocity of the particle in SHM = %5.1f cm per sec", v_max);

// Result 
// The accelertion of particle executing SHM = 789.6 cm per sec square 
// The maximum velocity of the particle in SHM = 251.3 cm per sec 
