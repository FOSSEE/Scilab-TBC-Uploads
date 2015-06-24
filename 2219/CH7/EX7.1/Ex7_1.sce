// chapter 7 example 1
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Ldipole    = 50;        // Length of dipole in cm
c          = 3*10^10;   // velocity of EM wave in cm/s
BW         = 10*10^6;   // bandwidth in Hz

// Calculations
lamda      = 2*Ldipole;     // wavelength in cm
fo         = c/lamda;       // operating frequency in Hz
Q          = fo/BW          // quality factor

// Output
mprintf('Q = %d',Q);
//------------------------------------------------------------------------------
