// Chapter 3 example 22
//------------------------------------------------------------------------------
clc;
clear;
// Given data
er      = 9;        // relative permittivity
c       = 3*10^10;   // velocity of EM wave in free space
f       = 2*10^9;   // operating frequency in Ghz
a       = 7;      // width of waveguide in cm
b       = 3.5;     // narrow dimension of waveguide in cm

// calculations
lamda_c  = 2*a;                 // cut-off wavelength in dominant mode
fc       = c/lamda_c            // cut-off frequency in Hz
lamda    = c/(sqrt(er)*f);       // operating wavelength
lamda_g  = lamda/(sqrt(1 - (lamda/lamda_c)^2)) // guide wavelength
Vp       = (lamda_g/lamda)*c

// Output
mprintf('Cut-off frequency = %3.3f Ghz\n Phase velocity = %3.2e m/s\n Guide wavelength = %3.2f cm',fc/10^9,Vp/10^2,lamda_g);
//------------------------------------------------------------------------------
