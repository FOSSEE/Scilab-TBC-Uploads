// Scilab code Ex7.2: Pg 236 (2005)
clc; clear;
e = 1.60e-19;    // Electrc charge, C
i = 1.00e-03;      // Electron current, A
N = i/e;       // Electrons per second
T = 0.657e-07;     // Fraction of electrons transmitted
T_e = N*T;    // Number of electrons transmitted per second
T_i = T_e*e;    // Transmitted current, A
printf("\nThe transmitted current through the oxide layer = %4.1f pA", T_i*1e+12);

// Result
// The transmitted current through the oxide layer = 65.7 pA 
