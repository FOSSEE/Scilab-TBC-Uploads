// Scilab Code Ex3a.a.7:Page-136 (2008)
clc; clear;
phi1 = 0;    // Phase of the first SHM, degree
phi2 = 45;    // Phase of the second SHM, degree
a1 = 0.005;    // Amplitude of the first SHM, m
a2 = 0.002;    // Amplitude of the second SHM, m
A = sqrt((a1 + a2*cosd(phi2))^2 + (a2*sind(phi2))^2);    // Resultant amplitude relative to the first SHM, m
phi = atand(a2*sind(phi2)/(a1 + a2*cosd(phi2)));    // Resultant phase angle relative to the first SHM, degree
printf("\nThe amplitude of the resultant displacement and phase angle relative to the first SHM are %7.5f m and %5.2f degrees respectively", A, phi);

// Result
// The amplitude of the resultant displacement and phase angle relative to the first SHM are 0.00657 m and 12.43 degrees respectively  