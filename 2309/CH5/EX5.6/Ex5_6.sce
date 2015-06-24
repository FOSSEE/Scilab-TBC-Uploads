// Chapter 5 Example 6
//==============================================================================
clc;
clear;

// input data
// Aluminium is FCC
a       = 0.405*10^-9;          // lattice constant of aluminium
t       = 0.005*10^-2;          // thickness of aluminium foil in m
s       = 25*10^-2;             // side of square in m

//Calculations
VUC     = a^3;                  // volume of unit cell
Val     = (s^2)*t               // volume of aluminium foil (area*thickness)
N       = Val/VUC               // Number if unit cells

//Output
mprintf('Number of unit cells = %3.3e',N);
//==============================================================================
