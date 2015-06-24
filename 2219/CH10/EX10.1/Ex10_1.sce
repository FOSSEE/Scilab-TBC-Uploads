// Chapter 10 example 1
//------------------------------------------------------------------------------
clc;
clear;
c       = 3*10^8;           // velocity of EM waves in m/s
f       = 10*10^9;          // carrier freq in Hz
fm      = 100;              // freq of modlating signal
dphi    = 10;               // separation b/w tx FM signal and demod echo signal in degrees

// Calculations
Tp      = dphi/(360*fm);    // round trip propagation time
R       = (c*Tp)/2;         // target range

// output
mprintf('Target Range = %3.2f Km',R/1000);
//------------------------------------------------------------------------------
