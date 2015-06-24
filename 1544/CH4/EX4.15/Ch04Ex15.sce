// Scilab code Ex4.15: Pg 130-131 (2008)
clc; clear;
N = 500;                                       // Number of turns on first section's coil
phi = 2e-03;                                   // Flux produced by first section, Wb
l_1 = 85e-02;                                  // Length of first section, m
l_2 = 65e-02;                                  // Length of second section, m
l_3 = 0.1e-02;                                 // Length of third section, m
A_1 = 10e-04;                                  // Csa of first section, m^2
A_2 = 15e-04;                                  // Csa of second section, m^2
A_3 = 12.5e-04;                                // Csa of second section, m^2
mew_o = 4*(%pi)*1e-07;                         // Pemeability for free space
mew_r1 = 600;                                  // Relative permeability of first section
mew_r2 = 950;                                  // Relative permeability of second section
mew_r3 = 1;                                    // Relative permeability of third section

// Part (a)
S_1 = l_1/(mew_r1 * mew_o * A_1);              // Reluctance of first section, At/Wb
S_2 = l_2/(mew_r2 * mew_o * A_2);              // Reluctance of first section, At/Wb
S_3 = l_3/(mew_r3 * mew_o * A_3);              // Reluctance of first section, At/Wb
S = S_1 + S_2 + S_3;                           // Total reluctance of the circuit, At/Wb
printf("\nTotal reluctance of the circuit = %4.2fe+06 At/Wb", S*1e-06);

// Part (b)
// Since phi = F/S, solving for F
F = phi*S;                                    // Magnetomotive force, At
// Since F = N*I, solving for I
I = F/N;                                      // Electric current in first section, A
printf("\nElectric current in first section = %4.2f A", I);

// Result
// Total reluctance of the circuit = 2.13e+06 At/Wb
// Electric current in first section = 8.51 A
