// Scilab code Ex4.9: Pg 121-122 (2008)
clc; clear; 
// Part (a)
I = 0.2;                    // Electric current, A
l = 5e-02;                  // Effective length, m
A = 7e-04;                  // Cross-sectional area, metre-square
d = 0.5e-03;                // Diametre, m
mew_r = 1;                  //Relative permeability for wood
mew_o = 4*(%pi)*1e-07;      // Pemeability for free space
N = l/d;                    // Number of turns 
// Since mmf is the product of the current and the number of turns, therefore, we have
F = N*I;                     // Magnetomotive force, At
// Part (b)
// Since magnetic field strength is defined as the mmf per metre length of the magnetic circuit, therefore, we have
H = F/l;                               // Magnetic field strength, At/m
B = ( mew_r * mew_o * H );             //  Flux density, T
// Part (c)
phi = B * A;                           // Flux, Wb
printf("\nThe mmf produced = %2d At", F);
printf("\nThe flux density produced = %3d micro-tesla", B/1e-06);
printf("\nThe flux produced = %5.3f micro-weber", phi/1e-06);

// Result
// The mmf produced = 20 At
// The flux density produced = 502 micro-tesla
// The flux produced = 0.352 micro-weber
