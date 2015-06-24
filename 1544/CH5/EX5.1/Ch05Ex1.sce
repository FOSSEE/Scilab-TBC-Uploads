// Scilab code Ex5.1: Pg 145 (2008)
clc; clear;
N = 100;                                 // Number of turns
delta_phi = 10e-03;                      // Flux linked with coil, Wb
delta_t = 2e-03;                         // Time during which flux changes, s
e =((-N)*delta_phi)/delta_t;            // Average induced emf, V
printf("\nThe average emf induced in the coi = %3d V", e);

// Result
// The average emf induced in the coi = -500 V
