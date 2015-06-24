// chapter 7 example 16
//-----------------------------------------------------------------------------
clc;
clear;
// given data
D       = 3;        // Mouth diameter in m
//f       = 2;        // focal length in m
bw3db   = 63;      // 3dB beam width
k       = 0.9;      // beam width is k times subtended angle

// Calculations
theta   = bw3db/k;  // subtended angle
theta_r = theta
//theta   = 4*atan(1/(4*f/D));
f       = D/(4*tan((theta_r/4)*(%pi/180)));

// Output
mprintf('Distance of feed from the point of intersection of antenna axis and the reflector surface = %3.2f m',f);
//------------------------------------------------------------------------------
