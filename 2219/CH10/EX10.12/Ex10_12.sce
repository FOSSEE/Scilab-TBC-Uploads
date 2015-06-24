// Chapter 10 example 12
//------------------------------------------------------------------------------
clc;
clear;
//Given data
Ra      = 25;       // Apparent Range in km
PRF     = 2000;     // Pulse rep. freq.
c       = 3*10^5;   // vel. of EM waves in km/s
Nr      = 3;        // Range zone

// Calculations
R       = Ra + ((c/2)*((Nr - 1)/PRF))    // true range in km

// Output
mprintf('True Range of the target = %d Km',R);
//------------------------------------------------------------------------------
