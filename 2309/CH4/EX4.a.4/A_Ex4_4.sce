// Chapter 4 Additional Example 4
//==============================================================================
clc;
clear;

// input data

lamda   = 0.124*10^-10;     // wavelength of X-rays in  m
theta   = 180;               // Scattering angle in degrees
h       = 6.625*10^-34      // plancks constant
mo      = 9.11*10^-31      // mass in Kg
c       = 3*10^8;           // vel. of light 

// Calculatioms
// from Compton theory ,Compton shift is given by
// lamda' - lamda = (h/(mo*c))*(1-cosθ)

theta_r = theta*%pi/180;     // degree to radian conversion
lamda1  = lamda+( (h/(mo*c))*(1-cos(theta_r))) // wavelength of scattered X-rays

// Output
mprintf('Wavelength of Scattered X-rays = %3.4f Å',lamda1*10^10);
//==============================================================================
