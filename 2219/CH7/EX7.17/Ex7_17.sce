// chapter 7 example 17
//-----------------------------------------------------------------------------
clc;
clear;
// given data
c       = 3*10^8;       // velocity of EM waves in m/s
f       = 2.5*10^9;     // operating frequency in Ghz
S       = 10*10^-2;     // inter element spacing
theta   = 10;           // steering angle 

// Calculations
lamda   = c/f          // Wavelength in m
phi     = (360*(S/lamda))*sin(theta*(%pi/180))
phi1    = 0*phi        // phase angle for element 1
phi2    = 1*phi        // phase angle for element 2
phi3    = 2*phi        // phase angle for element 3
phi4    = 3*phi        // phase angle for element 4
phi5    = 4*phi        // phase angle for element 5

// Output
mprintf('Phase angles for elements 1,2,3,4,5 are %d°, %d°, %d°, %d°, %d°',phi1,phi2,phi3,phi4,phi5);
//------------------------------------------------------------------------------


