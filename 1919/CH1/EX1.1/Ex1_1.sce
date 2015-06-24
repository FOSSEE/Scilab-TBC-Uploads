// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 1

clear ;clc;

//Given data
D  = 1   //D = diameter in meters
Pa = 101.325   //Pa = atmospheric pressure in kPa
P0 = 1    //P0 = Pressure inside the bell jar in Torr

// To find the force required to lift the bell jar off the plate
Pa = Pa * 1000;                 // units conversion kPa to Pa
P0 = P0 * 101325 / 760;         // units conversion Torr to Pa
F = (Pa-P0) * %pi * (D^2) / 4;  // Force calculation
F = F/1000;                     // Force units conversion N to kN

// Results
mprintf('Force required to lift the bell jar off the plate = %5.3f kN', F)
