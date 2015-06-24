// Scilab code Ex4.14: Pg 129-130 (2008)
clc; clear;
A = 8e-04;                                // Cross-sectional area, metre-square
d = 24e-02;                               // Mean diametre of iron ring, m 
phi = 1.2e-03;                            // Flux, Wb
mew_r = 1200;                             // Relative permeability
mew_o = 4*(%pi)*1e-07;                   // Pemeability for free space
mew_air = 1;                             // Pemeability for air
l_gap = 3e-03;                           // Mean length, m
l_Fe = (%pi) * d;                        // Mean length of iron circuit, m
S_Fe = l_Fe/(mew_r * mew_o *A);          // Reluctance of iron circuit, At/Wb
S_gap = l_gap/(mew_air * mew_o *A);        // Reluctance of gap, At/Wb
S = S_Fe + S_gap;                        // Total circuit reluctance, At/Wb
// Since phi = F/S, solving for F
F = phi*S;                               // Magnetomotive force, At
printf("\nThe required mmf = %5.1f At", F);

// Result
// The required mmf = 4331 At
