// Scilab code Ex5.27: Pg 185 (2008)
clc; clear;
L = 50e-03;                                 // Self-inductance of coil, H
I = 0.75;                                  // Electric current in coil, A
W = (L*(I^2))/2                            // Energy stored, J
printf("\nEnergy stored in the inductor = %4.1f mJ", W/1e-03)

// Result
// Energy stored in the inductor = 14.1 mJ
