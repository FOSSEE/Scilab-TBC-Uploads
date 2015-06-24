// chapter 4 example 8
//-----------------------------------------------------------------------------
clc;
clear;
// given data
a       = 4;        // width in cm
b       = 2;        // Height in cm
c       = 3*10^10;   // vel in free space in cm/s
fo      = 6*10^9;    // resonator frequency in Ghz
// For TE101 mode
m       = 1
n       = 0;
p       = 1;

// Calculations
//fo      = (c/2)*sqrt((m/a)^2 + (n/b)^2 + (p/d)^2);
d       = sqrt((p^2)/((2*fo/c)^2 - (m/a)^2 - (n/b)^2));
// Output
mprintf('Length of cavity resonator = %3.1f cm',d);
//------------------------------------------------------------------------------
