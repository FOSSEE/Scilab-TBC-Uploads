// Chapter 1 example 1
//------------------------------------------------------------------------------
clc;
clear;

// Given data
R   = 1.2;      // ratio of free space wavelength of a microwave signal to its wavelength when prop. through a dielectric medium

// Calculations
// lamda = lamda0/sqrt(er);
// er    = (lamda0/lamda)^2;
// let lamda0/lamda  = R

er  = (R)^2;        // Dielectric constant of medium

// Output
mprintf('The Dielectric constant of medium = %3.2f',er );
//------------------------------------------------------------------------------
