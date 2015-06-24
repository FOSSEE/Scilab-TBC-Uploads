// Chapter 11 example 12
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a       = 25000*10^3;      // semimajor axis in m from fig
G       = 6.67*10^-11;      // Gravitational constant
M       = 5.98*10^24;       // mass of the earth in kg
h = 0

// Calculations
u       = G*M;
T       = 2*%pi*sqrt((a^3)/u)
hr          = T/3600                        // conv. from sec to hrs and min
t           = modulo(T,3600)                // conv. from sec to hrs and min
mi          = t/60                          // conv. from sec to hrs and min

// Output
mprintf('Orbital time period = %d Hours %d minutes',hr,mi)
