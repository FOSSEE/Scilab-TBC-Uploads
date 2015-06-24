// chapter 7 example 9
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Beam_w_3db  = 0.4;

// Calculations
N2N_Beam_w  = 2*Beam_w_3db; // Null to Null beamwidth

// output
mprintf('Null to Null Beam width = %3.1f degrees',N2N_Beam_w);
//------------------------------------------------------------------------------
