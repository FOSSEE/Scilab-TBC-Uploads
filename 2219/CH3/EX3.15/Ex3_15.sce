// Chapter 3 example 15
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 4*10^-2;      // width of waveguide
b   = 2*10^-2;      // narrow dimension of waveguide
c   = 3*10^8;       // velocity of EM wave in m/s
m1  = 1;            // for TE10
m2  = 2;            // for TE20
n   = 0;            // for TE10
// Calculations
lamda_c     = 2*a       // cutoff wavelength for TE10 mode
f1          = c/lamda_c // frequency in Hz
// the frequency range for single mode operation is the range of frequencies corresponding to the dominant mode and the second highest cutoff wavelength
lamda_c_2   = 2/sqrt((m2/a)^2 + (n/b)^2)
f2          = c/lamda_c_2;   // freq at second largest cutoff wavelength

// Output
mprintf('Therefore,single mode operating range = %3.2f Ghz to %3.1f Ghz\n',f1/10^9,f2/10^9 );
mprintf(' Note: instead of 3.75,3.5 is printed in textbook');
//------------------------------------------------------------------------------

