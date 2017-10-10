// Example 10.2
// Computation of rheostat setting required to obtain an induced emf of 290 V
// Page No. 399

clc;
clear;
close;

// Given data
Ebat=240;               // Induced emf
If=8.9;                 // Field current
Rf=10.4;                // Field resistance

// Rheostat setting required to obtain an induced emf of 290 V

Rrheo=(Ebat/If)-Rf;

// Display result on command window
printf("\n Rheostat setting to obtain an induced emf of 290 V = %0.2f  ",Rrheo);


