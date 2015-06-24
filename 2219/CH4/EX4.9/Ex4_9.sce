// chapter 4 example 9
//-----------------------------------------------------------------------------
// Note : some data from is problem is taken from Ex4.8 
clc;
clear;
// given data
a       = 4;        // width in cm
b       = 2;        // Height in cm
c       = 3*10^10;   // vel in free space in cm/s
fo      = 6*10^9;    // resonator frequency in Ghz
d       = 3.2;       // length of cavity resonator in cm
// For TE101 mode
m       = 1
n       = 0;

// Calculations
lamda_c = 2/sqrt((m/a)^2 + (n/b)^2);        // cut-off wavelength in m
lamda   = c/fo;                             // operating wavelength in m
lamda_g = lamda/sqrt(1 - (lamda/lamda_c)^2) // guide wavelength in m

mprintf('Length of resonator is %3.1f cm and  guide wavelength is %3.1f cm',d,lamda_g);
mprintf('\n length of resonator is half of guide wavelength');
//------------------------------------------------------------------------------
