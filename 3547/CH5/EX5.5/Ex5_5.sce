// Example 5.5
// To calculate the inaccuracy with which resonator should be fabricated
// Page no.216

clc;
clear;

// Given data
R1=0.9;                                        // Reflectivity at point A
integer=4;
n=3.5;                                         // Reflection index of silicon
F=%pi/(1-sqrt(R1));                            // The finesse of the resonator and also called as the ratio of the free spectral range
lambda0=850;                                   // Wavelength in nanometer
L=integer*lambda0/(2*n);                       // Resonator length in nanometer

// The inaccuracy with which resonator should be fabricated
deltaL=L*0.5/F;

// Display result on command window
printf('\n Resonator length = %0.0f nm',L)
printf('\n The inaccuracy in length with which resonator should be fabricated = %0.0f nm',deltaL)
