// Chapter 6 example 15
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f2      = 20;       // pump frequency in GHz
f1      = 2;        // signal frequency in GHz

// Calculations
Gp      = (f1+f2)/f1;       // power gain if parametric amp. operated as USB up-converter
Gp_dB   = 10*log10(Gp);     // power gain in dB
Gp_lsb  = (f2-f1)/f1;       // power gain if parametric amp. operated as LSB up-converter
Gp_db_lsb = 10*log10(Gp_lsb )// power gain in dB

// output
mprintf('Power gain of parametric amplifier when operated as USB up-converter = %3.1f dB\n Power gain of parametric amplifier when operated as LSB up-converter = %3.1f dB',Gp_dB,Gp_db_lsb)
//------------------------------------------------------------------------------
