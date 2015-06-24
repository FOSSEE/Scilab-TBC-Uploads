// Chapter 3 example 9
//------------------------------------------------------------------------------
clc;
clear;
// Given data
VSWR    = 3;        // voltage standing wave ratio
d       = 20*10^-2  // separation b/w 2 successive minimas
er      = 2.25;     // dielectric constant
v       = 3*10^8;   // velocity in m/s

// Calculations
// VSWR = (1 + p)/(1 - p)
p       = (VSWR -1)/(VSWR + 1);     // reflection co-efficient
lamda   = 2*d;                      // wavelength of tx line
lamda_fr= lamda*sqrt(er);           // free space wavelength
f       = v/lamda_fr;               // operating frequency in Hz

// output
mprintf('Magnitude of Reflection Co-efficient = %3.1f\n Frequency of Operation = %3.0f Mhz',p,f/10^6);
//------------------------------------------------------------------------------
