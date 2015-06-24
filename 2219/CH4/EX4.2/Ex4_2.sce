// chapter 4 example 2
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Pi      = 10;           // Input power in mW
IL      = 0.4;          // insertion loss in dB
// calculations
// ILdb)   = 10log(Pi/Po)
Po      = Pi/(10^(IL/10))  // antilog conversion and coupling power

// Output
mprintf('Power available at the straight through port output = %3.3f mW',Po);
//------------------------------------------------------------------------------
