// Chapter 9 example 9
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
fc1     = 495;      // freq in Mhz
fc2     = 505;      // freq in Mhz

// Calculations
fo      = (fc1 + fc2)/2;        // Center of spectrum in Mhz
BW      = fc2 - fc1;            // Bandwidth in Mhz
PW      = 1/BW;                 // compressed pulse width in us

// Output
mprintf('Center of spectrum = %d Mhz\n Matched Bandwidth = %d Mhz\n Compressed Pulse width = %3.1fus',fo,BW,PW);
//------------------------------------------------------------------------------
