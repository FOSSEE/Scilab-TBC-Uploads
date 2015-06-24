// Chapter 4 Additional Example 10
//==============================================================================
clc;
clear;

// input data
b       = 40;       // angle subtended by final images at eye in degrees
a       = 10        // angle subtended by the object at the eye kept at near point in degrees

// Calculations
b_r     = b*%pi/180;    // degree to radian conversion
a_r     = a*%pi/180;    // degree to radian conversion
M       = tan(b_r)/tan(a_r);    // magnifying power

// Output
mprintf('Magnifying power = %3.3f',M);
//==============================================================================
