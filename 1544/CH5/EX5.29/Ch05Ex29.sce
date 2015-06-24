// Scilab code Ex5.29: Pg 189 (2008)
clc; clear;
V_2 = 60;                         // Output voltage, V
V_1 = 240;                        // Input voltage, V
N_2 = 500;                        // Secondary turns
// Part (a)
// For simplicity let V_1/V_2 = N_1/N_2 = k
k = V_1/V_2                      // Turns ratio
// Part (b)
// Since V_1/V_2 = N_1/N_2, solving for N_1
N_1 = k*N_2;                       // Primary turns
printf("\nThe required turns ratio = %1d:1", k)
printf("\nThe number of primary turns = %4d", N_1)

// Result
// The required turns ratio = 4:1
// The number of primary turns = 2000
