// Chapter 11 example 11
//------------------------------------------------------------------------------
clc;
clear;
// Given data
G       = 6.67*10^-11;      // Gravitational constant
M       = 5.98*10^24;       // mass of the earth in kg
Re      = 6370*10^3;        // radius of earth in m

// Calculations
u       = G*M
Vesc    = sqrt(2*u/Re);
Ves     = Vesc/1000;    // escape velocity in km/s

// Output
mprintf('Escape velocity = %3.1f km/s',Ves);
//------------------------------------------------------------------------------
