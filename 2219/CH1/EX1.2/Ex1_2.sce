// Chapter 1 example 2
//------------------------------------------------------------------------------
clc;
clear;
// Given data
Rmax        = 112;      // Max permissable range in Kms
H1          = 256;      // Ht of the antenna in m
// Calculations
// Rmax  = 4(sqrt(H1) + sqrt(H2));
// H2    = ((Rmax/4)-sqrt(H1))^2;
H2    = ((Rmax/4)-sqrt(H1))^2;      // Ht of other antenna
// Output
mprintf('Height of other antenna = %d m',H2);
//------------------------------------------------------------------------------
