// chapter 4 example 1
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Pi      = 10;           // Input power in mW
CF      = 20;           // coupling factor in dB

// calculations
// CF(db)   = 10log(Pi/Pc)
Pc      = Pi/(10^(CF/10))  // antilog conversion and coupling power

// Output
mprintf('Coupled Power = %d uW',Pc*10^3);
//------------------------------------------------------------------------------
