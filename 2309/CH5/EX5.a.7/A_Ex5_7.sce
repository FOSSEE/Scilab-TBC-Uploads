// Chapter 5 additional Example 7
//==============================================================================
clc;
clear;
// input data
// given crystal has BCC structure
r   = 1.2*10^-10;       // atomic radius in m

// Calculations

a   = (4*r)/sqrt(3);    // lattice constant
V   = a^3;              // volume of cell

//Output
mprintf('Volume of the cell = %3.3e m^3',V);
//==============================================================================
