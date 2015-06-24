// Chapter 3 example 6
//------------------------------------------------------------------------------
clc;
clear;
// Given data
c      = 3*10^8;        // velocity in m/s
f      = 100*10^6       // operating frequency in hz
Zin    = 100;
Zl     = 25;

// Calculations

lamda  = c/f            // wavelength in m
Lreq   = lamda/4;       // required length in m
Zo     = sqrt(Zin*Zl);  // charecteristic impedance in ohm

// Output
mprintf('Length of line required = %d cm\n Charecteristic impedance = %d ohm',Lreq*10^2,Zo);
//------------------------------------------------------------------------------
