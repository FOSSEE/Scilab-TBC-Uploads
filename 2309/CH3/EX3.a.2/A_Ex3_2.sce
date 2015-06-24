// Chapter 3 Additional Example 2 
//==============================================================================
clc;
clear;

//input data
delta       = 0.02;         // relative refractive index
n1          = 1.48;         // refractive index of core

// Calculations
NA          = n1*(2*delta)^0.5;     // Numerical aperture
n2          = sqrt( n1^2 - NA^2);   // Refractive index of cladding
cri_ang     = asin(n2/n1);          // critical angle
cri_ang_d   = cri_ang*180/%pi;      // critical angle in degrees

// output
mprintf('Numerical Aperture = %3.3f\n The Critical angle = %3.2f degrees',NA,cri_ang_d);
//==============================================================================
