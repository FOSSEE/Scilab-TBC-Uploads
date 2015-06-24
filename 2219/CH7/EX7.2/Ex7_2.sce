// chapter 7 example 2
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Rr      = 72;       // Radiation resistance in ohms
Rl      = 8;        // Loss resistance in ohms
Ap      = 27;       // power gain 

// Calculations
n       = Rr/(Rr + Rl);     // radiation efficiency
D       = Ap/n;             // Directivity
D_dB    = 10*log10(D);      // directivity in dB

// Output
mprintf('Directivity = %3.2f dB',D_dB );
//------------------------------------------------------------------------------
