// Chapter 9 example 2
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
f       = 10*10^9;      // radar Tx frequency
c       = 3*10^8;       // velocity of EM waves in m/s
V       = 108;          // vel of car in kmph

// Calculations
lamda   = c/f;          // wavelength in m
Vr      = V*(5/18);     // vel of car in m/s
fd      = (2*Vr)/lamda  // Doppler shift in Hz
fr      = f + fd        // received freq 
fr_away = f-fd          // Rx frequency if the car is moving away from radar

// Output
mprintf('Doppler Shift = %d Khz\n Frequency of Received signal = %3.6f Ghz\n Received Frequency if car is moving away from radar = %3.6f Ghz',fd/1000,fr/10^9,fr_away/10^9);
//------------------------------------------------------------------------------
