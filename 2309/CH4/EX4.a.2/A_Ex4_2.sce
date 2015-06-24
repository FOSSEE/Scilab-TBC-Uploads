// Chapter 4 AdditionalExample 2
//==============================================================================
clc;
clear;

// input data

lamda1  = 0.022*10^-10;      // wavelength of scatterd X-rays in m
theta   = 45;               // scatterring angle in degrees
h       = 6.625*10^-34      // plancks constant
mo      = 9.11*10^-31      // mass in Kg
c       = 3*10^8;           // vel. of light 

// Calculatioms
// from Compton theory ,Compton shift is given by
// lamda' - lamda = (h/(mo*c))*(1-cosθ)

theta_r = theta*%pi/180;     // degree to radian conversion
lamda  = lamda1-( (h/(mo*c))*(1-cos(theta_r))) // incident Wavelength

// Output
mprintf('Wavelength of incident beam = %3.4f Å',lamda*10^10);
//==============================================================================
