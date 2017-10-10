// Example no.3.5
// To calculate the frequency of the electromagnetic wave emitted by stimulated emission.
// Page no.110

clc;
clear;

// Given data
E=10^(-4);                                 // The energy difference between two levels in eV
E=10^(-4)*1.602*10^(-19);                  // The energy difference between two levels in J
h=1.054*10^(-34);                          // The distance between two levels

// The frequency of the electromagnetic wave emitted by stimulated emission.
f=(E/(2*%pi*h))*10^-9;                     // The frequency of the electromagnetic wave emitted by stimulated emission in GHz

// Displaying the result in command window
printf('\n The frequency of the electromagnetic wave emitted by stimulated emission = %0.0f GHz',f);
