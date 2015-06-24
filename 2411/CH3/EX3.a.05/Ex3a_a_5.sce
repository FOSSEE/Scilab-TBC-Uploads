// Scilab Code Ex3a.a.5: Page-135 (2008)
clc; clear;
phi1 = 0;    // Phase of the first SHM, degree
phi2 = 60;    // Phase of the second SHM, degree
phi3 = 90;    // Phase of the third SHM, degree
a1 = 1.0;    // Amplitude of the first SHM, cm
a2 = 1.5;    // Amplitude of the second SHM, cm
a3 = 2.0;    // Amplitude of the third SHM, cm
A = sqrt((a1 + a2*cosd(phi2)+a3*cosd(phi3))^2 + (a2*sind(phi2)+a3*sind(phi3))^2);    // Resultant amplitude relative to the first SHM, cm
phi = atand((a2*sind(phi2)+a3*sind(phi3))/(a1 + a2*cosd(phi2)+a3*cosd(phi3)));    // Resultant phase angle relative to the first SHM, degree
printf("\nThe resultant amplitude and phase angle relative to the first SHM = %4.2f cm and %2d degrees respectively", A, phi);

// Result
// The resultant amplitude and phase angle relative to the first SHM are 3.73 cm and 62 degrees respectively