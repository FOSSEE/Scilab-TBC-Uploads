// Scilab Code Ex12.3: Page-12.20 (2004)
clc;clear;
po = 40;    // Refractive index of fibre core
pi = 100;    // Refractive index of fibre cladding
p = po/pi;  // ratio of powers
L = -10*(log(po/pi));    // Refractive index of medium

printf("\nLoss in dB = %f dB", L);

// Result
// Loss in dB = 9.162907 dB
