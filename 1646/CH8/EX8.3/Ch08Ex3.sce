// Scilab Code Ex8.3: Page-430 (2011)
clc;clear;
v = 5e+003;....// Velocity of ultrasonic beam in steel plate, m/s
n = 25e+003;....// Difference between two neighbouring harmonic frequencies (Nm - Nm_minus1), Hz  
d = v/(2*n);    // The thickness of steel plate, m
printf("\nThe thickness of steel plate = %3.1f m", d);

// Result
// The thickness of steel plate = 0.1 m 