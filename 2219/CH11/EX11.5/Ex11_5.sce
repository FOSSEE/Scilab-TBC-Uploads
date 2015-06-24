// Chapter 11 example 5
//------------------------------------------------------------------------------
clc;
clear;
// Given data
h       = 13622;        // ht of circular orbit from earth's surface
Re      = 6378;         // Radius of earth in km

// Calculations
R       = Re+h;         // Radius of circular orbit
pimax   = 180 - (2*acos(Re/R))*(180/%pi);   // Maximum shadow angle
eclipmax_time = (pimax/360)*24;             // maximum daily eclipse duration

// output
mprintf('maximum shadow angle = %3.1f°\n Maximum daily eclipse duration = %3.2f hours',pimax,eclipmax_time);
//------------------------------------------------------------------------------
