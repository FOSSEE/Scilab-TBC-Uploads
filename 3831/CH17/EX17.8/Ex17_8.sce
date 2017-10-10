// Example 17_8
clc;funcprot(0);
// Given data
d=5.00*10^-3;// The base diameter of the tree in m

// Calculation
h_critical=68.0*(d^(2/3));// The critical buckling height of a small tree in m
printf("\nThe critical buckling height of a small tree,h_critical=%1.2f m",h_critical);
