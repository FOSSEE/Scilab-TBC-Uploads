// To find current developed in photodiode
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 14-3 in Page 395


clear; clc; close;

// Given data
h = 6.63*10^-34; //Planck's constant
c = 3*10^8; //Speed of light in m/s
lambda = 1.3*10^-6; // photon wavelength in m
QE = 0.82; //Quantum efficiency
p = 75*10^-6; //Power in W
q = 1.6*10^-19; //Charge of an electron

//Calculations
e = h*c/lambda;
N = p/e;
N_QE= QE*N;
I = N_QE*q;
printf("The current developed in a PIN photodiode = %0.2e A",I);

//Result
// The current developed in a PIN photodiode = 6.43e-005 A 



