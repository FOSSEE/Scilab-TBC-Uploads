// Chapter 5 Example 15
//==============================================================================
clc;
clear;

// input data
a   = 0.05;     // unit cell edge of an orthorhombic crystal in nm
b   = 0.05;     // unit cell edge of an orthorhombic crystal in nm
c   = 0.03;     // unit cell edge of an orthorhombic crystal in nm
Ia  = 0.025     // intercept on 'a' in nm
Ib  = 0.02      // intercept on 'b' in nm
Ic  = 0.01      // intercept on 'c' in nm

//Calculations

h   = a/Ia;     // miller indice h
k   = b/Ib;     // miller indice k
l   = c/Ic      // miller indice l

// Output
mprintf('Miller indices (h k l) = (%d %d %d)',h,k,l);
//==============================================================================


