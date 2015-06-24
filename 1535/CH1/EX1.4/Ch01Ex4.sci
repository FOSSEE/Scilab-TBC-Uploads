// Scilab Code Ex1.4 :  Page-24 (2010)
v1 = 16;    // Velocity of particle executing SHM at position 3 cm
v2 = 12;    // Velocity of particle executing SHM at position 4 cm
x1 = 3;    // First position of the particle, cm
x2 = 4;    // Second position of the particle, cm
// As v = omega*sqrt(A^2 - x^2) so
// (v1/v2)^2 = (A^2 - x1^2)/(A^2 - x2^2), solving for A
A = poly(0, 'A');    // Declare variable A
A = roots((A^2 - x1^2)*v2^2-(A^2 - x2^2)*v1^2);
printf("\nThe amplitude of SHM = %1d cm", A(1));
// v = omega*sqrt(A^2 - x^2), solving for omega
omega = v1/sqrt(A(1)^2 - x1^2);    // Angular speed of the particle, rad per sec
T = 2*%pi/omega;    // Time period of oscillation, sec
printf("\nThe time period of oscillation = %5.3f sec", T);

// Result 
// The amplitude of SHM = 5 cm
// The time period of oscillation = 1.571 sec 
