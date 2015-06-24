// Chapter 3 Additional Example 1 
//==============================================================================
clc;
clear;

//input data
n1      = 1.5;       // Refractive index of core
NA      = 0.26;      // Numerical aperture 
d       = 100*10^-6  // core diameter
lamda   = 10^-6;     // wavelength in m

// Calculations
n2      = sqrt( n1^2 - NA^2);       // Refractive index of cladding
im      = asin(NA);                 // Acceptance angle
im_d    = im*180/%pi                // radian to degree conversion
N       = 4.9*(d*NA/lamda)^2;       // maximum no of modes

// Output
mprintf('Refractive index of cladding n2 = %3.4f\n Acceptance angle = %3.2f degrees\n Maximum number of modes that fibre allows = %d ',n2,im_d,N);
//==============================================================================
