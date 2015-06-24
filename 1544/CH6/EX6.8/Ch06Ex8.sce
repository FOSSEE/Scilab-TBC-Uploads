// Scilab code Ex6.8: Pg 212 (2008)
clc; clear;
R_c = 50;   // Resistance of the coil of meter, ohm
K = 10e+03;     // Figure of merit of the moving coil meter, ohm per volt
V = 10;     // d.c. range of coil meter, volt

// Part (a)
I_fsd = 1/K;    // Full scale deflection for moving coil meter, ampere
R = V/I_fsd;    // Total meter resistance, ohm
// As R = R_m + R_c, solvign for R_m
R_m = R - R_c;      // Multiplier resistance required by the meter, ohm
printf("\nThe multiplier resistance required for 10 V d.c. range = %5.2f k-ohm", R_m/1e+03);

// Part(b)
I_av = I_fsd;   // Average value of ac current, A
I_rms = %pi/(2*sqrt(2))*I_av;    // rms value of ac current, A
V = 10 ;     // a.c. range of coil meter, volt
R = V/I_rms;    // Total meter resistance, ohm
// As R = R_m + R_c, solvign for R_m
R_m = R - R_c;      // Multiplier resistance required by the meter, ohm
printf("\nThe multiplier resistance required for 10 V a.c. range = %5.2f k-ohm", R_m/1e+03);

// Result
// The multiplier resistance required for 10 V d.c. range = 99.95 k-ohm
// The multiplier resistance required for 10 V a.c. range = 89.98 k-ohm
