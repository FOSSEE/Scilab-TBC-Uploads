// chapter 4 example 11
//-----------------------------------------------------------------------------
clc;
clear;
// given data
di       = 6;        // internal diameter in cms
d        = 5;        // length in cm
a        = 4;        // internal radius in cms
fo      = 10*10^9;  // operating frequency in Ghz
ha01    = 2.405;    // Eigen value of bessel function
ha11    = 1.841;    // Eigen value of bessel function
c       = 3*10^10   // velocity of EM wave in cm/sec
// For TM011 mode and TE111 mode
m0       = 0
m1       = 1
n1       = 1
p1       = 1
p2       = 2

// Calcultions
f0  = (c/(2*%pi))*sqrt((ha01/a)^2 + (p2*%pi/d)^2)           //resonant frequency for TM012 mode 
f01  = (c/(2*%pi))*sqrt((ha11/a)^2 + (p1*%pi/d)^2)           //resonant frequency for TE111 mode 

// Output
mprintf('Resonant frequency for TM012 mode = %3.3f Ghz\n Resonant frequency for TM111 mode = %3.3f Ghz\n',f0/10^9,f01/10^9 );
//------------------------------------------------------------------------------
