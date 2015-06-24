// Chapter 10 example 17
//------------------------------------------------------------------------------
clc;
clear;
//Given data
v       = 250;      // velocity in m/s
lamda   = 10.6*10^-6 // operating wavelength
theta   = 60;        // angle of depression

// Calculations
Vr      = v*cos(theta*%pi/180);     // radial velocity
fd      = (2*Vr)/lamda;             // doppler shift

// Output
mprintf('Doppler Shift = %3.2f Mhz',fd*10^-6);
//------------------------------------------------------------------------------
