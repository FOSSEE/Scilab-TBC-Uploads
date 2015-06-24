// Chapter 5 Additional Example 17
//==============================================================================
clc;
clear;

//input data

d       = 1.3*10^-10    // interplanar distance
n       = 1;            // given first order
theta   = 23;           // Bragg reflection angle in degrees

// Calculations
theta1   = theta*%pi/180;   // degree to radian conversion
// d     = (n*lamda)/(2*sinθ);    by Braggs law               ------------- 1
lamda    = (2*d*sin(theta1)/n)

// Output
mprintf('Wavelength of X-ray = %3.4f Å',lamda*10^10);
//==============================================================================
