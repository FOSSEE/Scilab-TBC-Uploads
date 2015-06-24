//============================================================================
// chapter 10 example 5
clc
clear

// Variable declaration
c   = 3*10^8;               // velocity of light in m
L   = 1.5;                  //length in m
n   = 1.0204;               // refractive index 
BW  = 1.5*10^9;             // Bandwidth in Hz

// Calculations
dV  = c/(2*L*n);             //frequency in Hz
N   = BW/dV;                // Number of optical nodes

// Result

mprintf('Number of Optical modes = % d',N);

//=============================================================================
