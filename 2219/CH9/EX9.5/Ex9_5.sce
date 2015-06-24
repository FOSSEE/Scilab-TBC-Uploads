// Chapter 9 example 5
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
CRR     = 100;      // Cross range resolution in m
R       = 3000;     // radial range

// Calculations
// CRR  = (R*theta3)*(%pi/180);
theta3  = (180*CRR)/(%pi*R)         // 3 dB beamwidth

// Output
mprintf('3 dB beamwidth = %3.2f°',theta3);
//------------------------------------------------------------------------------
