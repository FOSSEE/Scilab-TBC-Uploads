// Chapter 2 addl_Example 1
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // planck's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 5890*10^-10;          // wavelength of light in m
q           = 1.6*10^-19;           // charge of electron


//Calculations
Eg          = (h*c)/lamda;          // energy in joules
E           = Eg/q                  // energy in eV

//Output

mprintf('Energy of the first excited state  = %3.3f eV',E);

//==============================================================================
