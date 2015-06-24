// Scilab Code Ex3a.c.1: Page-143 (2008)
clc; clear;
// Comparing with the standard progressive wave equation, we have
a = 0.5;    // Amplitude of the wave, m
lambda = 2*%pi/12.56;    // Wavelength of the wave, m
v = 314/12.56;    // Wave velocity, m/s
nu = v/lambda;    // Frequency of the wave, Hz
printf("\nThe amplitude of the wave = %3.1f m", a);
printf("\nThe wavelength of the wave = %3.1f m", lambda);
printf("\nThe velocity of the wave = %d m/s", v);
printf("\nThe frequency of the wave = %d Hz", ceil(nu));

// Result
// The amplitude of the wave = 0.5 m
// The wavelength of the wave = 0.5 m
// The velocity of the wave = 25 m/s
// The frequency of the wave = 50 Hz 