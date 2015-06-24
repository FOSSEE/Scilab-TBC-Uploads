// Scilab code Ex5.14: Pg 163-164 (2008)
clc; clear;
R_c = 40;                           // Resistance of coil, ohm
I_fsd = 5e-04;                      // Full-scale deflection current, A
I_fsd = 5e-04;                      // Full-scale deflection current, A
V = 10;                             // Voltage reading range, V
V_c = 0.02;                          // Potential difference across coil resistance, V
// From Ohm's law, V = I_fsd*R, solving for R
R = V/I_fsd;                         // Total resistance, ohm
// Since R = R_m + R_c, solving R_m
R_m = R - R_c;                       // Multiplier resistance, ohm
printf("\nThe required value of multiplier resistance = %5.2f kilo-ohms", R_m*1e-03);

// Result
// The required value of multiplier resistance = 19.96 kilo-ohms
