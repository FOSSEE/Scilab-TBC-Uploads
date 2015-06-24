// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 9

clear ;clc;

//Given data
m = 5000        // mass of aeroplane in kg
h = 6000        //aeroplane flying at an altitude in m
V = 360         //speed of aeroplane in km per hour
g = 9.81        // gravitationalforce
//Calculate mass of 1 kmol air
V = V* 1000/3600;      // units conversion km/hour to m/s
KE = (m * V^2)/2;   // kinetic energy in J
KE = KE/1e6;        //units conversion J to MJ
PE = (m * g * h);   // potential energy in J
PE = PE/1e6;        //units conversion J to MJ

// Results
mprintf('Kinetic energy of aeroplane   = %2.0f MJ', KE)
mprintf('\n Potential energy of aeroplane = %5.1f MJ', PE)
