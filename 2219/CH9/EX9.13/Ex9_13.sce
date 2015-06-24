// Chapter 9 example 13
// Data taken from Ex 12
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
PW      = 10^-6;            // Pulse width in sec
Pp      = 100*10^3;         // Peak power in watts
PRF     = 1000;             // pulse rep.rate
N_target= 20;               // no of target hits in 1 dwell period

// Calculations
PE      = Pp*PW;            // Pulse energy in Joule
LE      = N_target *PE;     // look energy
DC      = PW*PRF            // Duty cycle
Pav     = Pp*DC;            // Average power
Pavg    = 10*log10(Pav);    // Avg power in dB
Pp_dB   = 10*log10(Pp);     // Peak power in dB
DCCF    = Pp_dB - Pavg      // Duty cycle correction factor
// Output
mprintf('Duty cycle correction factor = %d dB',DCCF);
//-----------------------------------------------------------------------------
