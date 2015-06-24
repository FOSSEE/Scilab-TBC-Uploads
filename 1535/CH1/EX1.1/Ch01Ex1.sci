// Scilab Code Ex1.1 : Page-23 (2010)
A = 4/2;    // Amplitude of SHM, cm
x = 0;    // Mean position of oscillating particle, cm
v = 12;    // Velocity of the particle at the mean position, cm/s
// As v = omega*sqrt(A^2 - x^2), solving for omega
omega = v/sqrt(A^2 - x^2);
printf("\nThe time period of SHM = %5.2f s", (2*%pi)/omega);

// Result 
// The time period of SHM =  1.05 s 
