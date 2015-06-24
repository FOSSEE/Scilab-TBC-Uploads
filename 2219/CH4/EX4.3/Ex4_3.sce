// chapter 4 example 3
//-----------------------------------------------------------------------------
clc;
clear;
// given data
CF      = 20;       // Coupling factor in dB
I       = 50;       // Isolation in dB
Pc      = 100*10^-6; // coupling power in W

// calculations
// D    = 10log(Pc/Piso)
D       = I - CF;           // Directivity in dB
Piso    = Pc/(10^(D/10))  // antilog conversion and coupling power

// Output
mprintf('Directivity = %d dB\n Power at isolated port = %d nW',D,Piso*10^9);
//------------------------------------------------------------------------------
