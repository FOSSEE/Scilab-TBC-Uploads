// Chapter 3 example 6
clc;
clear;

// Variable declaration
u1  = 3.3;          // magnetic dipole moment
u   = 9.24*10^-24;
B   = 5.2;          // magnetic field in tesla
k   = 1.38*10^-23;  // boltzmann constant

// calculations
T   = (u*u1*B)/(1.5*k);     // Temperature in Kelvin

// Output
mprintf('Temperature to which substance to be cooled = %3.1f K\n ',T);
mprintf('Note:Values given in question B = 52, u = 924*10^-24.Values substituted in calculation B = 5.2, u = 9.24*10^-24');
