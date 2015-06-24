// Chapter 3 example 3
//------------------------------------------------------------------------------
clc;
clear;
// Given data
PW  = 30*10^-6;     // pulse width in sec
ips = 20*10^-6;     // inter pulse separation
v   = 3*10^8;       // propagation speed in m/s

// Calculations
T   = PW+ips+PW+ips+PW      // time duration of the pulse train for having 3 pulses on the line at a time
l   = v*T;                  // minimum length of cable required

// Output
mprintf('Minimum length of cable required = %d km',l/1000);
//------------------------------------------------------------------------------
