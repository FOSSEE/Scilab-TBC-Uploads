// Chapter 4 Example 2
//==============================================================================
clc;
clear;

// input data
theta   = 135;               // angle in degrees
h       = 6.625*10^-34      // plancks constant
mo      = 9.1*10^-31       // mass in Kg
c       = 3*10^8;          // vel. of light in m/s

// Calculatioms
// from Compton theory ,Compton shift is given by
// lamda' - lamda = (h/(mo*c))*(1-cosθ)
theta_r = theta*%pi/180;     // degree to radian conversion
c_lamda = ( (h/(mo*c))*(1-cos(theta_r))) // Change in wavelength in m

// Output
mprintf('Change in Wavelength  = %3.5f Å',c_lamda*10^10);
//==============================================================================
