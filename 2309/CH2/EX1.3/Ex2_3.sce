// Chapter 2 Example 3 
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // plank's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 1.55*10^-6;           // wavelength of light in m
q           = 1.6*10^-19;           // charge of electron

//Calculations
Eg          = (h*c)/lamda;          // band gap energy in joules
E           = Eg/q                  // bang gap energy in eV

//Output

mprintf('Energy bandgap Eg   = %3.4f eV',E);

//==============================================================================
