// Chapter 5 Example 1
//==============================================================================
clc;
clear;

//input data
//given intercepts 3,4 and ∞, the recipocals of intercepts is
// (1/3):(1/4):(1/∞)
// LCM = 12
// multiplying by LCM we get miller indices
// miller indices of a plane are the smallest integers of the reciprocals of its intercerpts
// therefore miller indices(h k l) is (4 3 0);

h   = 4;       // miller indice
k   = 3;       // miller indice
l   = 0;       // miller indice
a   = 2;      // primitive vector of lattice in angstrom

//Calculations

dhkl    = a/sqrt((h^2)+(k^2)+(l^2)); // interplanar distance

//Output
mprintf('Miller indices = (4 3 0)\n');
mprintf(' The interplanar distance d = %3.1f Å',dhkl);
//==============================================================================
