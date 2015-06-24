// Chapter 11 example 14
//------------------------------------------------------------------------------
clc;
clear;
// Given data
ra_S_rp     = 50000;        // sum of apogee and perigee distance
ra_D_rp     = 30000;        // difference of apogee and perigee distances

// Calculations
e           = ra_D_rp/ra_S_rp;  // eccentricity

// Output
mprintf('Target eccentricity = %3.1f',e);
//------------------------------------------------------------------------------
