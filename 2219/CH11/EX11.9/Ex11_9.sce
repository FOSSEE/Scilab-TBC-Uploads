// Chapter 11 example 9
//------------------------------------------------------------------------------
clc;
clear;
// Given data
farth   = 30000;        // farthest point in satellite elliptic eccentric orbit
closest = 200;          // closest point in satellite elliptic eccentric orbit
Re      = 6370;         // Radius of earth in km

// Calculations
Apogee  = farth + Re;   // Apogee in km
Perigee = closest + Re; // perigee in km
a       = (Apogee + Perigee)/(2);       // semi-major axis
e       = (Apogee - Perigee)/(2*a);     // orbit eccentricity

// Output
mprintf('Apogee = %d km\n Perigee = %d km\n orbit eccentricity = %3.3f',Apogee,Perigee,e);
//------------------------------------------------------------------------------
