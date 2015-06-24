// chapter 4 example 10
//-----------------------------------------------------------------------------
clc;
clear;
// given data
di       = 8;        // internal diameter in cms
a        = 4;        // internal radius in cms
fo      = 10*10^9;  // operating frequency in Ghz
ha01    = 2.405;    // Eigen value of bessel function
c       = 3*10^10   // velocity of EM wave in cm/sec
// For TM011 mode
m       = 0
n       = 1
p       = 1

// Calcultions
//f0  = (c/2*pi)*sqrt((ha/a)^2 + (p*pi/d)^2)  operating frequency
d     = (p*%pi)/(sqrt((fo*2*%pi/c)^2 - (ha01/a)^2))   //length of resonator

// Output
mprintf('Length of resonator = %3.3f cm',d);
//------------------------------------------------------------------------------
