// Scilab code Ex9.2: Pg 307 (2005)
clc; clear;
h_cross = 6.58e-16;    // Reduced Plank's constant, eV-s
S = h_cross*sqrt(3)/2;   // Spin angular momentum, eV-s
S_z = h_cross/2;     // Z-component of spin angular momentum, eV-s
theta_up = acosd(S_z/S);
theta_down = acosd(-S_z/S);
printf("\nFor up spin state, theta = %4.2f degrees", theta_up);
printf("\nFor down spin state, theta = %5.1f degrees", theta_down);

// Result
// For up spin state, theta = 54.74 degrees
// For down spin state, theta = 125.3 degrees 
