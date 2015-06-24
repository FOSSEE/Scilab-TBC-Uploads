// chapter 4 example 5
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Pi      = 5*10^-3;            // Input power in W
CF      = 10;                // coupling factor
Piso    = 10*10^-6           // power at isolated port in w
// calculations
// CF   = 10log(Pi/Pc)
Pc      = Pi/(10^(CF/10))  // antilog conversion and coupling power
// D    = 10log(Pc/Piso)    // Directivity
D       = 10*log10(Pc/Piso)
// Output
mprintf('Directivity = %3.0f dB\n',D);
//------------------------------------------------------------------------------
