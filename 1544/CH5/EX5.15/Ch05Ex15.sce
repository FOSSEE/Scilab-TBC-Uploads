// Scilab code Ex5.15: Pg 164-165 (2008)
clc; clear;
R_c = 1500;                             // Coil resistance, ohm
I_fsd = 75e-06;                         // Full-scale deflection current, A
I = 5;                                  // Current range, A
V = 10;                                  // Voltage range, V
// Part (a)
// Using Ohm's law,
V_c = I_fsd*R_c;                         // Potential difference across coil resistance, V
// Since I = I_s + I_fsd, solving for I_s
I_s = I-I_fsd;                       // Shunt current, A
// From Ohm's law, V_c = I_s*R_s, solving for R_s
R_s = V_c/I_s;                       // Shunt resistance, ohm
// Part (b)
// Since = V = V_m + V_c, solving for V_m
V_m = V - V_c;                        // Potential difference across multiplier resistance, V
// From Ohm's law, V_m = I_fsd*R_m, solving for R_m
R_m = V_m/I_fsd                      // Multiplier resistance, ohm
printf("\nThe required value of shunt resistance = %4.1f mega-ohm", R_s/1e-03);
printf("\nThe required value of multiplier resistance = %4.1f mega-ohm", R_m*1e-03);

// Result
// The required value of shunt resistance = 22.5 mega-ohm
// The required value of multiplier resistance = 131.83 mega-ohm
