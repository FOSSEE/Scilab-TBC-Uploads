// Scilab Code Ex3a.c.3: Page-144 (2008)
clc; clear;
// Comparing with the standard progressive wave equation, we have
a = 8;    // Amplitude of the wave, cm
nu = 4/2;    // Frequency of the wave, Hz
lambda = 2/0.02;    // Wavelength of the wave, cm
v = nu*lambda;    // Wave velocity, cm/s
delta_x = 20;    // Path difference between two particles, cm
delta_phi = delta_x*2*%pi/lambda*180/%pi;    // Phase difference between two particles, degree
printf("\nThe amplitude of the wave = %3.1f cm", a);
printf("\nThe wavelength of the wave = %3.1f cm", lambda);
printf("\nThe velocity of the wave = %3.1f cm/s", v);
printf("\nThe frequency of the wave = %d Hz", nu);
printf("\nThe phase difference between two particles = %d degree", delta_phi);

// Result
// The amplitude of the wave = 8.0 cm
// The wavelength of the wave = 100.0 cm
// The velocity of the wave = 200.0 cm/s
// The frequency of the wave = 2 Hz
// The phase difference between two particles = 72 degree 