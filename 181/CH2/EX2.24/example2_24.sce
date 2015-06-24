// Find the diffusion length
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-24 in page 101

clear; clc; close;

// Given data
C_D=1.5*10^-6; // Diffusion capacitance in F
D_p=13; // Constant 
eta=2; // Constant
V_t=0.026; // Voltage at room temperature in V
I=1*10^-3; // Current in mA

// Calculation
L_p=sqrt((C_D*D_p*eta*V_t)/I);

printf("Diffusion length = %0.3e m",L_p);

// Result
// Diffusion length = 31.84*10^-3 m