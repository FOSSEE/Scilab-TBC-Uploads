//Chapter 13 example 3
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
K       = 2/3;            // K-factor

// calculations
F1      = 72.2*((D1*D2)/(D*f))^0.5;     // first fresnel zone
// computing curvature 'h' of earth at a distance of 10 miles from Transmitter if given by (D1*D2)/(1.5*K)
h       = (D1*D2)/(1.5*K);             // curvature of earth in feet
PLabove = hant - h;                    // path line is PLabove feet above surface of earth
if PLabove < F1 then
    mprintf('Available clearance above the surface of earth = %d feet\n Required first fresnal zone clearance = %3.1f feet,So it would be obstructed',PLabove,F1 )
end
//------------------------------------------------------------------------------
