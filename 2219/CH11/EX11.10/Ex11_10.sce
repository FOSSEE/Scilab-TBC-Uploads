// Chapter 11 example 10
//------------------------------------------------------------------------------
clc;
clear;
// Given data
e       = 0.5;      // orbit eccentricity
ae      = 14000;    // from fig. the distance from center of ellipse to the centre of earth

// Calculations
a       = ae/e;         // semi major axis
apogee  = a*(1 + e);    // Apogee in km
perige  = a*(1 - e);    // perigee in km

// output
mprintf('Apogee = %d km\n Perigee = %d km',apogee,perige);
//------------------------------------------------------------------------------
