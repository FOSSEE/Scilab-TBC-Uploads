// Chapter 2 Example 4 
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // plank's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 4961*10^-10;          // wavelength of light in m

//Calculations
E           = (h*c)/lamda;          // energy in joules
N           = 1/E
//Output

mprintf('Number of photons required to do one Joule of work  = %3.4e /m^3',N);

//==============================================================================
