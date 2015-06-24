// Chapter 9 example 4
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
PW_tx   = 10^-6;            // Transmitted pulse width
Rx_PW   = 10^-6;            // Received pulse width        
c       = 3*10^8;           // velocity of EM waves in m/s

// Calculations
RR      = (c*Rx_PW)/2;      // Range Resolution in m

// output
mprintf('This Radar can resolve upto an inter target separation in range of %d m\n Therefore,given radar will be able to resolve the targets',RR);
//------------------------------------------------------------------------------
