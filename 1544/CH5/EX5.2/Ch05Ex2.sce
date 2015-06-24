// Scilab code Ex5.2: Pg 146 (2008)
clc; clear;
N = 250;                                     // Number of turns
delta_phi1 = 20e-03;                         // Flux linked with coil, Wb
delta_phi2 = -16e-03;                        // Flux linked with coil, Wb
delta_t1 = 0.05;                             // Time, s
delta_t2 = 0.01;                             // Time, s
e_1 =((-N)*delta_phi1)/delta_t1;             // Average induced emf, V
e_2 =((-N)*delta_phi2)/delta_t2;             // Average induced emf, V
printf("\nChange in flux in first case = %4.2f weber", delta_phi1);
printf("\nEmf induced in first case = %3d volts",e_1);
printf("\nChange in flux in second case = %4.2f weber", delta_phi2);
printf("\nEmf induced in second case = %3d volts", e_2);

// Result
// Change in flux in first case = 0.02 Wb
// Emf induced in first case = -100 V
// Change in flux in second case = -0.02 Wb
// Emf induced in second case = 400 V
