//Chapter 13 example 1
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 6;            // microwave terrestrial comm link oper. freq in Ghz
D       = 50;           // single hop path length in miles
// mid way of path length
D1      = 25;
D2      = 25;
N       = 3;            // N value for third fresnal zone

// calculations
F1      = 72.2*((D1*D2)/(D*f))^0.5;     // first fresnel zone
F3      = F1*sqrt(N);               // Third fresnal zone

// Output
mprintf('First Fresnel zone distance = %3.1f feet\n Third Fresnel zone distance = %3.1f feet\n',F1,F3);
//------------------------------------------------------------------------------
