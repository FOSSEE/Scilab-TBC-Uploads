// Chapter 9 example 12
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

// Output
mprintf('Average power = %d dB\n Look Energy = %3.0f Joules',Pavg,LE);
//-----------------------------------------------------------------------------
