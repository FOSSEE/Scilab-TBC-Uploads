// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 4

clear ;clc;

//Given data
Pf = 0.4        //Pf = pressure of the gas in MPa
Pa = 0.1        //Pa = atmospheric pressure in MPa
A = 10^-2       // A = cross-sectional area of piston in m^2
Vi = 0.1        // initial volume in m^3
Vf = 0.2        // final volume in m^3

//Calculate spring force constant
Pf = Pf * 10^6;       // units conversion MPa to Pa
Pa = Pa * 10^6;       // units conversion MPa to Pa
K = (Pf-Pa)*A^2/(Vf-Vi);    //spring force constant

// Results
mprintf('Spring force constant = %3.0f N/m', K)
