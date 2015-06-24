// Chapter 6 example 7
//------------------------------------------------------------------------------
clc;
clear;
// Given data
fo      = 40*10^9;      // oscillating freq. of Gunn diode
no      = 10^15;        // doping concentration
up      = 8000;         // mobility in positive conductance region
er      = 13;           // relative permitivity
um      = 100;           // mobility in m^2/V-s
eo      = 8.85*10^-14;  // permitivity in F/cm
e       = 1.6*10^-19;   // charge of electron

// Calculations
// (eo*er)/(e*up) << no/fo < (eo*er)/(e*um)  // condition to be satisfied
// let k = (eo*er)/(e*up) , l = (eo*er)/(e*um) , p = no/fo
p       = no/fo
k       = (eo*er)/(e*up)
l       = (eo*er)/(e*um)
if (k<p) then
    if p<l then
        mprintf('Necessary Condition satisfied')
    end
    end
    
