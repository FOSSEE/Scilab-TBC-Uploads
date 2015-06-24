// Scilab Code Ex3b.5: Page-164 (2008)
clc; clear;
theta_A = 30;    // Angle between principal sections of polariser and  analyser for beam A, degree
theta_B = 60;    // Angle between principal sections of polariser and  analyser for beam B, degree
// As I_A*cosd(theta_A)^2 = I_B*cosd(theta_B)^2, solving for I ratio
I_ratio = cosd(theta_B)^2/cosd(theta_A)^2;    // The intensity ratio of the two beams
printf("\nThe intensity ratio of the two beams = %4.2f", I_ratio);

// Result
// The intensity ratio of the two beams = 0.33
