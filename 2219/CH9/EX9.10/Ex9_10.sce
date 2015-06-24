// Chapter 9 example 10
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
f       = 10^9;         // CW radar waveform freq.
fm      = 100;          // modulation freq. in Hz
MaxfD   = 500;          // max freq deviation in Hz
c       = 3*10^8;       // vel. of EM waves in m/s

// Calculations
Mf      = MaxfD/fm      // Modulation index
BW      = 2*(Mf + 1)*fm // Bandwidth
RR      = c/(2*BW);     // Range Resolution in m

// Output
mprintf('Bandwidth = %d Hz\n Range Resolution = %d Km',BW,RR/1000);
//------------------------------------------------------------------------------
