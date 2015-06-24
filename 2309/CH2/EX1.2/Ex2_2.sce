// Chapter 2 Example 1 
//==============================================================================
clc;
clear;

//input data
Eg          = 2.8;                  // bandgap energy in eV
h           = 6.625*10^-34;         // plank's constant
c           = 3*10^8;               // vel. of light in m/s
q           = 1.602*10^-19;         // charge of electron

//Calculations
E           = Eg*q                 // eV to joules conversion
lamda       = h*c/E;                // wavelength

//Output

mprintf('wavelength = %3.1f Å(Blue Colour)',lamda*10^10);

//==============================================================================
