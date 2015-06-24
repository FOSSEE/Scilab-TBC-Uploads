// Chapter 11 example 8
//------------------------------------------------------------------------------
clc;
clear;
// Given data
Apogee  = 30000;        // Apogee pt of satellite elliptical orbit
Perige  = 1000;         // perigee pt of satellite elliptical orbit

// Calculations
a       = (Apogee + Perige)/2;  // semi major axis

// output
mprintf('Semi-major axis = %d Km',a);
//------------------------------------------------------------------------------
