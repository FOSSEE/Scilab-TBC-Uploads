// Chapter 5 additional Example 8
//==============================================================================
clc;
clear;
// input data
a   = 4*10^-10;     // lattice constant of the crystal
h   = 1             // miller indice
k   = 0             // miller indice
l   = 0             // miller indice

//Calculations

// in fig consider (100) plane. the no of atoms in plane ABCD
N   = 4*(1/4);      // Number of atoms
p   = N/(a*a);      // planar atomic density in atoms/m^2
p1  = p*10^-6       // planar atomic density in atoms/mm^2

//Output
mprintf('planar atomic density = %3.2e atoms/mm^2',p1);
//==============================================================================

