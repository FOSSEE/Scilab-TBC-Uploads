// chapter 7 example 5
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Ptot        = 100;      // certain antenna radiating power
Ptot_iso    = 10*10^3;  // isotropic antenna radiating power

// Calculations
D           = 10*log10(Ptot_iso/Ptot);  // Directivity of antenna

// Output
mprintf('Directivity of antenna = %d dB',D);
//------------------------------------------------------------------------------
