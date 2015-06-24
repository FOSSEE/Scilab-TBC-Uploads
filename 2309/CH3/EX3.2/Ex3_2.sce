// Chapter 3 Example 2
//==============================================================================
clc;
clear;

//input data
n1      = 1.55;      // Refractive index of core
n2      = 1.5;       // Refractive index of cladding

// Calculations
NA      = sqrt(n1^2 - n2^2);        // Numerical Aperture of optical fiber
im      = asin(NA);                 // Acceptance angle
im_d    = im*180/%pi                // radian to degree conversion

// Output
mprintf('Numerical Aperture of the optical fiber = %3.4f\n Acceptance angle = %3.2f degrees ',NA,im_d);
//==============================================================================
