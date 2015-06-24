//Chapter 13 example 4
//------------------------------------------------------------------------------
clc;
clear;
// Given data
UF      = 2*10^-4;      // unavailability factor

// Calculations
outrage_t = UF*8760;    // outrage time in hours per year

// Output
mprintf('Outrage time = %3.3f hours per year',outrage_t);
//------------------------------------------------------------------------------
