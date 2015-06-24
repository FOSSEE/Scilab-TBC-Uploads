// Chapter 4 Additional Example 3
//==============================================================================
clc;
clear;

// input data
Ei      = 1.02*10^6         // photon energy in eV
theta   = 90;               // scattered angle in degrees
h       = 6.625*10^-34      // plancks constant
mo      = 9.1*10^-31       // mass of electron in Kg
e       = 1.6*10^-19       // charge of electron
c       = 3*10^8;          // vel. of light in m/s

// Calculatioms
// from Compton theory ,Compton shift is given by
// lamda' - lamda = (h/(mo*c))*(1-cosθ)
theta_r = theta*%pi/180;     // degree to radian conversion
c_lamda = ( (h/(mo*c))*(1-cos(theta_r))) // Change in wavelength in m
dv      = c/c_lamda;         // change in frequency of the scattered photon
dE      = (h*dv)/e           // change in energy of scattered photon in eV
// This change in energy is transferred as the KE of the recoil electron
Er      = dE;                // Energy of recoil electron
Es      = Ei - Er            // Energy of scattered photon


// Output
mprintf('Energy of the recoil electron = %3.4f MeV\n Energy of the Scattered photon = %3.4f MeV',Er*10^-6,Es*10^-6);
//==============================================================================
