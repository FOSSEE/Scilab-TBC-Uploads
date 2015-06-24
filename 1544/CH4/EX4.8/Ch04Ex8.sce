// Scilab code Ex4.8: Pg 120-121 (2008)
clc; clear;
r = 3e-02;                            // Radius of toroid, m
A = 4.5e-04;                          // Cross-sectional area of toroid, metre-square
N = 500;                              // Number of turns 
phi = 250e-06;                        // Flux, Wb
mew_o = 4*(%pi)*(1e-07);              // Permeability of free space
mew_r = 300;                          // Relative permeability
l = 2*(%pi)*r;                        // Effective length, m
B = phi/A;                            // Flux density, T
// Since B = (mew_r)*(mew_o)*H, solving for H
H = B /((mew_r)*(mew_o));              // Magnetic field strength, At/m
// Since H = F/l, solving for F
F = H*l;                               // Magnetomotive force, At
// Since mmf,F = N*I, solving for I
I = F/N;                               // Electric current, A
printf("\nThe value of current needs to be passed through the coil = %4.2f A", I);

// Result
// The value of current needs to be passed through the coil = 0.56 A
