// chapter 7 example 15
//-----------------------------------------------------------------------------
clc;
clear;
f       = 3;        // focal length in m
fpos    = 1.5;      // feed is placed 1.5m from pt of intersection os sec.reflector and antenna axis

// Calculation
f_hyp   = f-fpos;   // focal length of hyperboloid from figure;

// Output
mprintf('focal length of hyperboloid = %3.1f m',f_hyp);
//------------------------------------------------------------------------------
