// Chapter 2 addl_Example 4
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // planck's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 9.6*10^-6;            // wavelength of CO2 laser source in m
q           = 1.6*10^-19;           // charge of electron
P           = 10*10^3               // output power of the CO2 laser source in watts or J/sec


//Calculations
v           = c/lamda               // frequency of the photon emitted by the laser beam
E           = h*v;                  // energy of a photon in joules
Po          = P*60*60;              // conversion fro J/sec to J/hour
N           = Po/E;                 // No of photons emitted per hour 

//Output

mprintf('The No. of Photons emitted per hour = %3.3e photons/hour',N);

//==============================================================================
