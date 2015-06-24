// Chapter 11 example 4
//------------------------------------------------------------------------------
clc;
clear;

// Given data
h       = 35800;            // height of satellite orbit from earth in km
G       = 6.67*10^-11;      // Gravitational constant
M       = 5.98*10^24;       // mass of the earth in kg
Re      = 6364;             // radius of earth in km
i       = 2;                // inclination angle

// Calculations
u       = G*M
r       = Re+h
Vi      = sqrt(u/r*10^3)*tan(i*%pi/180);     // magnitude of velocity impulse
V       = Vi/1000;                           // magnitude of velocity impulse in m/s
// Output
mprintf('Magnitude of velocity impulse = %d m/s',V);
//------------------------------------------------------------------------------
