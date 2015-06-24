// Chapter 10 example 15
//------------------------------------------------------------------------------
clc;
clear;
//Given data
f       = 10*10^9;      // operating freq in Hz
c       = 3*10^8;       // vel. of EM waves in m/s
Ae      = 2;            // Antenna aperture in m
R       = 10*10^3;      // Target Range in m

// Calculations
lamda   = c/f;          // Wavelength in m
bw3db   = lamda/2;      // 3dB beamwidth in radian
Leff    = bw3db * R;    // effective length
Xs      = (R*lamda)/(2*Leff);   // Cross range resolution

// Output
mprintf('Effective Length = %d m\n',Leff);
mprintf('Cross range resolution = %d m',Xs);
//------------------------------------------------------------------------------
