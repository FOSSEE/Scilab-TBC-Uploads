// Scilab code Ex13.8: Pg 486 (2005)
clc; clear;
M_X = 226.025406;   // Atomic mass of Ra-226, u
M_Y = 222.017574;   // Atomic mass of Rn-222, u
M_alpha = 4.002603; // Mass of alpha particle, u
Q = (M_X - M_Y - M_alpha)*931.494;  // Q-value for Radium Decay, MeV/u
printf("\nThe Q-value for Radium Decay = %4.2f MeV", Q);

// Result
// The Q-value for Radium Decay = 4.87 MeV 
