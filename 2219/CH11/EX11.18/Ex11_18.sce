// Chapter 11 example 18
//------------------------------------------------------------------------------
clc;
clear;
// Given data
H   = 35786;        // ht of orbit from earth surface
Re  = 6378          // radius of earth in kms

// Calculations
// For theoretical max coverage angle,elevation angle E = 0 
E = 0
// max coverage angle = 2amax
// 2amax = 2asin(Re/(Re+H)cosE)
amax = 2*asin((Re/(Re+H))*cos(E))
amax_deg = amax*180/%pi     // rad to deg conversion
D   = sqrt( Re^2 + (Re+H)^2 - 2*Re*(Re + H)*asin(E + asin((Re/(Re+H))*cos(E)))) // Max slant range

// Output
mprintf('Maximum Coverage angle = %3.1f°\n Maximum slant Range = %d Km',amax_deg,D);
//--------------------------------------------------------------------------------
