//Chapter 13 example 2
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 4.5;          // microwave terrestrial comm link oper. freq in Ghz
D       = 40;           // single hop path length in miles
hant    = 200;          // antenna ht. above surface of earth
// from fig
D1      = 5;
D2      = 35;
K       = 1;            // for normal case

// calculations
F1      = 72.2*((D1*D2)/(D*f))^0.5;     // first fresnel zone
// computing curvature 'h' of earth at a distance of 10 miles from Transmitter if given by (D1*D2)/(1.5*K)
h       = (D1*D2)/(1.5*K);             // curvature of earth in feet
PLabove = hant - h;                    // path line is PLabove feet above surface of earth
hmaxtol = PLabove - F1;                 // max tolerable height in feet

// Output
mprintf('Maximum tolerable height of obstacle above surface of earth = %3.1f feet',hmaxtol);
//------------------------------------------------------------------------------
