// Chapter 3 example 21
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 6;      // width of waveguide in cm
b   = 3;      // narrow dimension of waveguide in cm
lamda = 4;    // operating wavelength in cm
c   = 3*10^8;       // velocity of EM wave in cm/s

// Calculations
lamda_c  = 2*a;      // cut-off wavelength in dominant mode
lamda_g  = lamda/(sqrt(1 - (lamda/lamda_c)^2)) // guide wavelength
Vp       = (lamda_g/lamda)*c 
b        = (2*%pi)/lamda_g;     // phase shift constant

// Output
mprintf('Guide wavelength = %3.2f cm\n Phase velocity = %3.2e m/s\n Phase shift constant = %3.2f radians/cm',lamda_g,Vp,b)   
//------------------------------------------------------------------------------
