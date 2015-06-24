// Chapter 9 example 3
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
f       = 10*10^9;      // radar Tx frequency
PRF     = 2000;         // Pulse repetitive frequency in Hz
Vr      = 0.5;          // radial vel in Mach
c       = 3*10^8;       // velocity of EM waves in m/s
vs      = 330;          // velocity of sound in m/s

// Calculations
lamda           = c/f;          // wavelength in m
max_unamb_fd    = PRF/2;        // maximum unambiguous doppler shift
Vrunamb         = (lamda*max_unamb_fd)/2; // doppler shift
Vaircraft       = 0.5*vs;       // Converting from Mach to m/s
fd_desired      = (2*Vaircraft)/lamda;
PRF_desired     = 2*fd_desired; // desired PRF

// Output
if  Vrunamb < Vaircraft then
    mprintf('The radar is not capable of determining unambiguously the velocity of the approaching aircraft\n');
end
mprintf(' Desired Pulse Repetition Rate = %d Khz',PRF_desired/1000);
//------------------------------------------------------------------------------
