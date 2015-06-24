// Chapter 3 example 13
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f   = 1*10^9;       // frequency in Hz
a   = 5*10^-2;      // wall separation
c   = 3*10^8;       // velocity of EM wave in m/s
m   = 1;            // for TE10
n   = 0;            // for TE10

// Calculations
// lamda0   = 2/sqrt((m/a)^2 + (n/b)^2)
lamda0      = (2*a)/m
lamda_frspc = c/f;
if lamda_frspc > lamda0 then
    mprintf('1 Ghz signal cannot propagate in TE10 mode')
else
    mprintf('1 Ghz signal can propagate in TE10 mode');
end
    
    
    
