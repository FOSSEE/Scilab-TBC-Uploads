// Chapter 2 addl_Example 3
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // planck's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 6328*10^-10;          // wavelength of He-Ne laser source in m
q           = 1.6*10^-19;           // charge of electron
P           = 3*10^-3               // output power of the He-Ne source in watts or J/sec


//Calculations
v           = c/lamda               // frequency of the photon emitted by the laser beam
E           = h*v;                  // energy of a photon in joules
Po          = P*60;                 // conversion fro J/sec to J/min
N           = Po/E;                 // No of photons emitted per minute 

//Output

mprintf('The No. of Photons emitted per minute = %3.3e photons/minute',N);

//==============================================================================
