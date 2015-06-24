//==============================================================================
// chapter 7 example 6

clc;
clear;

// Variable declaration
I1  = 20;           // current in ma
V1  = 0.8;          // vtg in volts
V2  = 0.7;          // vtg in volts
I2  = 10;           // current in ma
v3  = -10;
I3  = -1*10^-6;     // current

// Calculations
R   = (V1 - V2)/(I1 - I2);
Vreb  = v3/I3;

// Result
mprintf('a. resistance = %d ohm\n Vreb = %3.1e ohm',R*10^3,Vreb);

//===============================================================================
