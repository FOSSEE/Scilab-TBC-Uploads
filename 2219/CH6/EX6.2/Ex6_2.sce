// Chapter 6 example 2
//------------------------------------------------------------------------------
clc;
clear;
// Given data
Rl      = 500;      // load resistance

// Calculations
gl      = 1/Rl;     // load conductance
gmax    = 4*gl;     // max negative diff. conductance

// Output
mprintf('gmax = %3.3f mho',gmax);
//------------------------------------------------------------------------------
