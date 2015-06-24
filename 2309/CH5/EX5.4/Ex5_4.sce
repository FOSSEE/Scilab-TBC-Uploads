// Chapter 5 Example 4
//==============================================================================
clc;
clear;

//input data
lamda   = 1.5418;       // wavelength in Å
h       = 1;            // miller indice
k       = 1;            // miller indice
l       = 1;            // miller indice
n       = 1;            // given first order
theta   = 30;           // diffraction angle in degrees

// Calculations
theta1   = theta*%pi/180;   // degree to radian conversion
// d     = (n*lamda)/(2*sinθ);    by Braggs law               ------------- 1
// d     = a/sqrt((h^2)+(k^2)+(l^2));  interplanar distance    ------------ 2
// equating 1 and 2

a       = (n*lamda*sqrt((h^2)+(k^2)+(l^2))/(2*sin(theta1)))

// Output
mprintf('Interatomic spacing a = %f Å',a);
//==============================================================================
