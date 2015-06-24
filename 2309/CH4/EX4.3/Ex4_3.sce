// Chapter 4 Example 3
//==============================================================================
clc;
clear;

// input data

lamda   = 0.1*10^-9;         // wavelength of X-rays in m
theta   = 90;               // angle with incident beam in degrees
h       = 6.625*10^-34      // plancks constant
mo      = 9.11*10^-31      // mass in Kg
c       = 3*10^8;           // vel. of light 

// Calculatioms
// from Compton theory ,Compton shift is given by
// lamda' - lamda = (h/(mo*c))*(1-cosθ)
theta_r = theta*%pi/180;     // degree to radian conversion
lamda1  = lamda+( (h/(mo*c))*(1-cos(theta_r))) // wavelength of scattered beam

// Output
mprintf('Wavelength of Scattered beam = %3.4f Å',lamda1*10^10);
//==============================================================================
