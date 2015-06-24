// Chapter 2 Example 1 
//==============================================================================
clc;
clear;

//input data

A           = 4*10^-6;              // Receiving area of photo detector
I           = 200;                  // Intensity in W/m^2
h           = 6.625*10^-34;         // plank's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 0.4*10^-6;            // wavelength of light in m

//Calculations
v           = c/lamda;              // frequency
NOP         = I*A/(h*v)             // number of photons

//since each photon generates an electron hole pair, the number of photons is equal to number of electron hole pairs

//Output

mprintf('Number of electron hole pairs = %e ',NOP);

//==============================================================================
