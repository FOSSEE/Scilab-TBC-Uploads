// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 5

clear ;clc;

//Given data
P = 101.325        //P = atmospheric pressure in kPa
A = 3 * 10^-2       // A = Average surface area of a human head in m^2
g = 9.81        // g = gravity on earth in m/s^2

//Calculate mass of air which is exerting the pressure on a human head
P = P * 10^3;       // units conversion kPa to Pa
m = P * A /g        //mass of air

// Results
mprintf('Mass of air = %5.2f kg', m)
