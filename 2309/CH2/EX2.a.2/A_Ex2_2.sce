// Chapter 2 addl_Example 2
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // planck's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 5890*10^-10;          // wavelength of light in m
k           = 1.38*10^-23;          // Boltzmann constant
Tc          = 280                   // Temperature in centigrades

//Calculations
T           = Tc+273;               // temperature in kelvin
R           = 1/((exp((h*c)/(k*T*lamda))) - 1);     // ratio of stimulated emission to spontaneous emission

//Output

mprintf('The ratio between the stimulated emission and apontaneous emission = %3.3e',R);

//==============================================================================

