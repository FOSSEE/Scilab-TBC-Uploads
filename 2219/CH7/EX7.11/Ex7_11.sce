// chapter 7 example 11
//-----------------------------------------------------------------------------
clc;
clear;
// given data
f       = 300*10^6;     // operating frequency in Hz
c       = 3*10^10;       // velocity of EM wave in cm/s

// Calculations
lamda   = c/f;          // wavelength in cm
// Physical length of antenna is made 5% shorter than desired length as per rule of thumb
l       = lamda/2;      // length of halfwave dipole
lphy    = l-(5/100)*l;  // as per rule of thumb

// Output
mprintf('Length of a half wave dipole to be cut = %3.1f cm',lphy);
//------------------------------------------------------------------------------
