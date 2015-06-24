// Chapter 11 example 17
//------------------------------------------------------------------------------
clc;
clear;
// Given data
r       = 42164;        // orbital radius in kms
Dlamda_max = 500;       // max displacement due to latitude deviation

// Calculations
i   = Dlamda_max/r;     // angle of inclination in radians
i_deg = i*180/%pi       // rad to deg conv

// Output
mprintf('Angle of inclination = %3.2f°',i_deg);
//------------------------------------------------------------------------------
