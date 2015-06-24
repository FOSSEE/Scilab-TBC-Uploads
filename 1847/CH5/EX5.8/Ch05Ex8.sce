// Scilab Code Ex5.8 :: Page-5.34 (2009)
clc;clear;
e = 1.6e-019;   // Electronic charge, C
f = 450;    // Count rate of GM counter, counts/min
N = f*1e+08;    // Total number of electrons collected per min
Q = N*e;    // Charge collected per min, C
I = Q/60;   // Averge current in the GM counter, A
printf("\nThe averge current in the GM counter= %3.1e A", I);

// Result
// The averge current in the GM counter= 1.2e-10 A 
