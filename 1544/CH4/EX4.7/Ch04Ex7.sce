// Scilab code Ex4.7: Pg 120 (2008)
clc; clear;
r = 0.04;                           // Mean radius of torod, m
A = 3e-04;                          // Csa of toroid, m^2
mew_o = 4*(%pi)*1e-07;              // Permeability of free space
mew_r = 150;                        // Relative permeability of toroid
N = 900;                            // Number of turns on coil
I = 1.5;                            // Coil current, A
l = 2*(%pi)*r;                      // Effective length of toroid, m

// Part (a)
// Since m.m.f is the product of the current and the number of turns, therefore, we have
F = N*I;                            // Magnetomotive force, At
printf("\nThe m.m.f of toroid = %4d At", F);

// Part (b)
// Since magnetic field strength is defined as the mmf per metre length of the magnetic circuit, therefore, we have
H = F/l;                               // Magnetic field strength, At/m
printf("\nThe magntic field strength = %6.1f At/m", H);

// Part (c)
B = (mew_r*mew_o*H);                   // Flux density, T
phi = B*A;                             // Flux, Wb
printf("\nThe flux and flux density are %6.2f micro-weber and %6.4f T respectively", phi/1e-06, B)

// Result
// The m.m.f of toroid = 1350 At
// The magntic field strength = 5371.5 At/m
// The flux and flux density are 303.75 micro-weber and 1.0125 T respectively
