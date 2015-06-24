// chapter 4 example 6
//-----------------------------------------------------------------------------
clc;
clear;
// given data
a       = 2;        // width in cm
b       = 1;        // Height in cm
d       = 3;        // length in cm
c       = 3*10^10;   // vel in free space in cm/s
// For TE101 mode
m       = 1
n       = 0;
p       = 1;

// Calculations
fo      = (c/2)*sqrt((m/a)^2 + (n/b)^2 + (p/d)^2);

// Output
mprintf('Resonant Frequency = %d Ghz',fo/10^9);
//------------------------------------------------------------------------------
