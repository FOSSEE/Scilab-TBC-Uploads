// Position of Fermi level at room temperature
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-22 in page 50

clear; clc; close;

// Data given
C_Ge=4.41*10^22; // Concentration of Ge atom /cm^3
N_D=4.41*10^15; // Number of free donor atoms 
N_C=8.87*10^18; // Number of conduction electrons assuming full ionization
K_BT=0.026; // Measured in eV at room temperature

// Calculation
E_F=K_BT*log(N_D/N_C);

printf("Position of fermi level is %0.4f",E_F);

// Result
// Position of Fermi level from edge of conduction band is -0.1977
// Thus E_F is below E_C