// chapter 7 example 14
//-----------------------------------------------------------------------------
clc;
clear;
// given data
D       = 2;        // Mouth diameter in m
f       = 2;        // focal length in m
bw3db   = 90/100;   // beamwidth of antenna chosen to be 90% of angle subtended by feed

// Calculations
theta   = 4*atan(1/(4*f/D));    // angle subtended by the focal point feed at edges of reflector
theta_d = theta*180/%pi
Beam_w_3dB = bw3db*theta_d;       // 3 dB beam width
NNBW    = 2*(Beam_w_3dB );

// Output
mprintf('3 dB Beamwidth = %3.1f°\n Null-to-Null beam width = %3.2f°\n',Beam_w_3dB,NNBW);
//------------------------------------------------------------------------------
