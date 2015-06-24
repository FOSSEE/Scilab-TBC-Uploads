// Chapter 9 example 15
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
Gx      = 60;       // gain of Rx 'X' in dB
Gy      = 70;       // gain of Rx 'Y' in dB
Fx      = 3;        // Noise factor of 'X'
Fy      = 2;        // Noise factor of 'Y'

// calculations
Gx_W    = 10^(Gx/10)    // gain in watts
Gy_W    = 10^(Gy/10)    // gain in watts
// k    = Pnx/Pny;      // Ratio of noise power levels produced at the o/p's of Rx 'X' and 'Y'
k       = (Fx*Gx_W)/(Fy*Gy_W);    // Ratio of noise power levels produced at the o/p's of Rx 'X' and 'Y'

// output
mprintf('Ratio of noise power levels produced at the outputs of Rx X and Y = %3.2f',k);
//------------------------------------------------------------------------------
