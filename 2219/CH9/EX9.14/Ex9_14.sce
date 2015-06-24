// Chapter 9 example 14
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
G_rx        = 97;       // Rx gain in dB
Bn          = 5*10^6;   // Bandwidth in Hz
To          = 300;      // temperature in kelvin
K           = 1.38*10^-23;  // Boltzmann constant in J/k
n           = -3        // o/p noise power in dBm

// calculations
Pn_dB      = n-G_rx       // input noise power
Pn         = 10^(Pn_dB/10)*10^-3       // converting from dBm to watts
// Pn      = KToBnF;
F          = Pn/(K*To*Bn)  // Noise Factor
T          = To*[F - 1]    // Equivalent Noise Temperature

// Output
mprintf('Equivalent Noise Temperature = %d°K',T );
//------------------------------------------------------------------------------

