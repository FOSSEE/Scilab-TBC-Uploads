// Chapter 10 example 11
//------------------------------------------------------------------------------
clc;
clear;
//Given data
R       = 100;          // Range in kms
PRR     = 10*10^3;      // pulse rep. rate in Hz
c       = 3*10^5;       // vel. in km/s

// Calculations
PRI     = 1/PRR        // pulse rep. interval
Ra      = modulo(R,(c*PRI/2));      // apparent range in km

// Output
mprintf('Apparent Range = %d Km\n',Ra);
//------------------------------------------------------------------------------
