// Chapter 6 example 10
//------------------------------------------------------------------------------
clc;
clear;
// Given data from graph
up  = (2*10^7)/3000;                // mobility of diode in positive conductance region
un  = (2*10^7 - 10^7)/((10-3)*10^3); // mobility of diode in negative conductance region

// Output
mprintf('mobility of diode in positive conductance region = %d cm^2/V-s\n mobility of diode in negative conductance region = %3.0f cm^2/V-s',up,un);
//------------------------------------------------------------------------------
