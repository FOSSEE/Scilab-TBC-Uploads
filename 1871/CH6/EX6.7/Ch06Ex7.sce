// Scilab code Ex6.7: Pg:249 (2008)
clc;clear;
I_0 = 1;    // For simplicity assume maximum intensity to be unity, unit
theta_A = 60;    // Angle between the plane of polarizer and plane of the analyzer for beam A, degree
theta_B = 30;    // Angle between the plane of polarizer and plane of the analyzer for beam B, degree
I_A = I_0*cosd(theta_A)^2;    // Malus' Law for beam A
I_B = I_0*cosd(theta_B)^2;    // Malus' Law for beam A
printf("\nThe intensity ratio of two emerging beams = %4.2f ", I_A/I_B);

// Result 
// The intensity ratio of two emerging beams = 0.33  
