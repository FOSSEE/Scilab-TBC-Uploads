// Chapter 11 example 1
//------------------------------------------------------------------------------
clc;
clear;

// Given data
h       = 150;      // height of satellite from earth in km
G       = 6.67*10^-11;      // Gravitational constant
M       = 5.98*10^24;       // mass of the earth in kg
Re      = 6370;             // radius of earth in km

// Calculations
u       = G*M
V       = sqrt(u/((Re + h)*10^3))  // orbital velocity
V1      = V/1000;                  // orbital velocity in km/s

// Output
mprintf('Orbital velocity = %3.3f km/s',V1);
//------------------------------------------------------------------------------
