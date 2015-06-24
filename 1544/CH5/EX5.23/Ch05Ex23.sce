// Scilab code Ex5.23: Pg 179-180 (2008)
clc; clear;
N_1 = 600;                                 // Number of turns in a coil in first case
N_2 = 900;                                 // Number of turns in a coil in secnd case  
N_3 = 900;                                 // Number of turns in a coil in third case
l = 45e-03;                               // Effective length of coil, m
A = 4e-04;                                // Cross-sectional area of coil, m^2
mew_o = 4*(%pi)*1e-07;                     // Pemeability for free space
mew_r1 = 1;                                // Relative permeability in first case
mew_r2 = 1;                                // Relative permeability in second case
// Part (a)
mew_r3 = 75;                                // Relative permeability in third case
L_1 = (mew_o*mew_r1*(N_1^2)*A)/l;          // Self-inductance of coil in first case, H
// Part (b)
// Since self-inductance of a coil is directly proportional to the number of turns in a coil, therefore, we have L_2/L_1 = (N_2^2)/(N_1^2), solving for L_2
L_2 = (L_1*(N_2^2))/(N_1^2);          // Self-inductance of coil in second case, H
// Part (c)
// Since mew_r3 = 75*mew_r2, keeping all other quantities same we have
L_3 = mew_r3*L_2;          // Self-inductance of coil in third case, H
printf("\nSelf-inductance of coil in first case = %4.2f mH",L_1/1e-03);
printf("\nSelf-inductance of coil in second case = %5.3f mH", L_2/1e-03);
printf("\nSelf-inductance of coil in third case = %5.3f H", L_3);

// Result
// Self-inductance of coil in first case = 4.02 mH
// Self-inductance of coil in second case = 9.048 mH
// Self-inductance of coil in third case = 0.679 H
