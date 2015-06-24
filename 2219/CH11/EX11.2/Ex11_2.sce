// Chapter 11 example 2
//------------------------------------------------------------------------------
clc;
clear;

// Given data
Ap_Pe_diff  = 30000;        // difference between apogee and perigee in Km
a           = 16000;        // semi major axis of orbit

// Calculations
e           =  Ap_Pe_diff/(2*a);    // Eccentricity

// Output
mprintf('Eccentricity = %3.2f',e);
//------------------------------------------------------------------------------
