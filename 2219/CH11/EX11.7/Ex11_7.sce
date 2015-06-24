// Chapter 11 example 7
//------------------------------------------------------------------------------
clc;
clear;
// Given data
m       = 100;      // mass of satellite
V       = 8000;     // orbital velocity in m/s
Re      = 6370;     // radius of earth in Km
H       = 200;      // satellite height above earth surface

// Calculations
CF      = (m*V^2)/((Re+H)*10^3);       //centrifugal force

// output
mprintf('Centrifugal Force = %d Newtons',CF);
//------------------------------------------------------------------------------
