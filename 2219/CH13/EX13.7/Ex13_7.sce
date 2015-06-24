//Chapter 13 example 7
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 3.5;              // operating freq. of microwave link in Ghz
D       = 30;               // single hop path length in miles
a       = 1;                // roughness
b       = 0.5;              // humid climate
F       = 40;               // fade margin in dB

// Calculations
U       = a*b*2.5*10^-6 *f*D^3 *10^(-F/10);     // unavailability factor 
U1      = U*525600;                             // unavailabilty factor in minutes per year
U4      = U1*4;                                 // unavailabilty factor for 4-hop link
// Output
mprintf('Outage Time = %3.1f minutes per year',U4);
//------------------------------------------------------------------------------
