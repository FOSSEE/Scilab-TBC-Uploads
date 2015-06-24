// Scilab code Ex16.1: Pg 15 (2005)
clc; clear;
c = 3e+05;   // Velocity of light, km/s
v = c/4;    // Recessional velocity, km/s
H_0 = 20e-06;    // Hubble's constant, km/s/lightyear
// From Hubble's law, v = H_o*R_max, solving for R_max
R_max = v/H_0;  // Maximum distance at which Hubble's law applies without relativistic correction, lightyears
printf("\nThe maximum distance at which Hubbles law applies without relativistic correction = %1.0e ly", R_max);
printf("\n");

// Result
// The maximum distance at which Hubbles law applies without relativistic correction = 4e+09 ly
