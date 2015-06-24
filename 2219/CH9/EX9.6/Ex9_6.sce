// Chapter 9 example 6
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
Vs      = 330;          // velocity of sound in m/s
NM      = 1.85*(5/18)   // 1NM equivalent in m/s
V1      = 0.5;          // velocity of first aircraft in mach
V2      = 400;          // velocity of second aircraft in NM/hr
theta   = 30;           // angle with radial axis in degrees
lamda   = 3*10^-2;       // wavelength in m

// Calculations
v1      = V1*Vs         // velocity of first aircraft in m/s
fd1     = (2*v1)/lamda  // doppler freq.
v2      = V2*NM*cos(30*(%pi/180))  // velocity of second aircraft in m/s
fd2     = (2*v2)/lamda  // doppler freq
dd      = fd2 - fd1    // doppler difference
Tl      = 1/dd         // look time in s

// Output
mprintf('Required minimum look time = %3.2f ms',Tl/10^-3);
mprintf('\n Note: Cos(30) value is taken as 0.5 in textbook');
//------------------------------------------------------------------------------
