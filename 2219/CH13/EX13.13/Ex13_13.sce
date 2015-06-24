//Chapter 13 example 13
//------------------------------------------------------------------------------
clc;
clear;
// Given data
MTBF2    = 20000;       // microwave Tx output MTBF figure  
MTBF3    = 60000;       // power amplifier portion of MTBF

// Calculations
MTBF1    = (MTBF2*MTBF3)/(MTBF3-MTBF2); 
impr     = MTBF1-MTBF2      // improvement in MTBF if power amplifier not used

// output
mprintf('Improvement in MTBF of transmitter if power amplifier is not used = %d hours',impr);
//------------------------------------------------------------------------------
