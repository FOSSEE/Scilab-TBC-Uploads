// Chapter 2 Additional Example 7 
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // plank's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 5511.11*10^-10;       // wavelength of green LED light in m
q           = 1.6*10^-19;           // charge of electron

//Calculations
Eg          = (h*c)/lamda;          // band gap energy in joules
E           = Eg/q                  // bang gap energy in eV

//Output

mprintf('Energy bandgap Eg   = %3.2f eV',E);

//==============================================================================
