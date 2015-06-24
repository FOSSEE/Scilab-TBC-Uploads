// Scilab code Ex5.13: Pg 163 (2008)
clc; clear;
R_c = 40;                           // Resistance of coil, ohm
I_fsd = 5e-04;                      // Full-scale deflection current, A
I = 3;                              // Current reading, A
V_c = I_fsd*R_c;                    // Potential difference, V
// Since I = I_s + I_fsd, solving for I_s
I_s = I-I_fsd;                       // Shunt current, A
// From Ohm's law, V_c = I_s*R_s, solving for R_s
R_s = V_c/I_s;                       // Shunt resistance, ohm
printf("\nThe value of required shunt resistance = %4.2f milli-ohm", R_s/1e-03); 

// Result
// The value of required shunt resistance = 6.67 milli-ohm 
