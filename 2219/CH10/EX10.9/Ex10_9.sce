// Chapter 10 example 9
//------------------------------------------------------------------------------
clc;
clear;
//Given data
lamda   = 3*10^-2;      // Operating Wavelength in m
PRF     = 2000;         // pulse rep. freq in Hz
n       = 1;            // for lowest blind speed

// Calculations
LBS     = (n*lamda*PRF)/2; // lowest blind speed
Vb_kmph = LBS*(18/5)       // lowest blind speed in kmph

// Output
mprintf('Lowest Blind speed = %d Kmph',Vb_kmph)
//------------------------------------------------------------------------------

