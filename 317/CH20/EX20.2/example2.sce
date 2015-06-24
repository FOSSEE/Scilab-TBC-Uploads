// find maximum,minimum voltage gain
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 20-2, page 747

clear; clc; close;

// Given data
R1=1.2*10^3;// in ohms
R2=91*10^3;// in ohms

// Calculations
Avmin=-R2/R1;// minimum voltage gain
Avmax=0;// maximum voltage gain is 0
disp(Avmin,"minimum voltage gain=")
disp(Avmax,"maximum voltage gain=")

// Result
// Minimum voltage gain is -75.8
// Maximum voltage gain is 0