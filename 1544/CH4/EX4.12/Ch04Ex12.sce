// Scilab code Ex4.12: Pg 126-127 (2008)
clc; clear;
mew_o = 4*(%pi)*1e-07;              // Permeability for free space
l = 0.1875;                         // Mean length, m
A = 8e-05;                          // Cross- sectional area of of coil, metre-square
N = 750;                            // Number of turns
phi = 112e-06;                      // Flux, Wb
l_gap = 0.5e-03;                    // Average length of the magnetic circuit,m
B = phi/A;                          // Flux density, Wb
H = 2000;                           // Magnetic field strength( value taken from graph ), At/m
F_Fe = H*l;                         // The m.m.f in the iron part of the circuit, At
// Since F = I*N, solving for I
I = F_Fe/N;                         // Coil current under normal conditions, A
// Since B = mew_o * H_gap, solving for H_gap
H_gap = B/mew_o;                    // Magnetic field strength, At/m
// Since H_gap = F_gap/l_gap, solving for F_gap
F_gap = H_gap * l_gap;              // The mmf in the air part of the circuit, At
F = F_Fe + F_gap;                  // Total circuit mmf, At
I_new = F/N;                       // Current required to maintain the flux at its original value, A
printf("\nThe coil current required to produce a flux of %3d micro-weber in the toroid = %3.1f A ", phi/1e-06, I);
printf("\nCurrent required to maintain the flux at its original value = %5.3f A", I_new);

// Result
// The coil current required to produce a flux of 112 micro-weber in the toroid = 0.5 A 
// Current required to maintain the flux at its original value = 1.243 A
