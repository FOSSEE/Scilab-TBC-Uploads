// Chapter 3 example 19
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 4*10^-2;      // width of waveguide
b   = 2*10^-2;      // narrow dimension of waveguide
c   = 3*10^8;       // velocity of EM wave in m/s
f   = 5*10^9        // operating frequency in Hz
m0  = 0;            // for TE01
m1  = 1;            // for TE10 / TE11 /TM11
n0  = 0;           // for TE10
n1  = 1;            // for TE11 or TM11  
// Calculations
lamda        = c/f;                         // operating wavelength
lamda_TE01   = 2/sqrt((m0/a)^2 + (n1/b)^2)  // cutoff wavelength for TE01
lamda_TE10   = 2/sqrt((m1/a)^2 + (n0/b)^2)  // cutoff wavelength for TE10
lamda_TE11   = 2/sqrt((m1/a)^2 + (n1/b)^2)  // cutoff wavelength for TE11 or TM11
if lamda_TE01 >lamda then
    mprintf('TE01 propagates in the given guide at the given operating frequency');
    elseif lamda_TE10 >lamda then
    mprintf('TE10 propagates in the given guide at the given operating frequency');
    elseif lamda_TE11 >lamda then
    mprintf('TE11 propagates in the given guide at the given operating frequency');
end
