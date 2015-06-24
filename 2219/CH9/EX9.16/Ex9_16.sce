// Chapter 9 example 16
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
Pn      = -70;          // Noise power in dBm
fl      = 10^6;         // lower cut-off freq in Hz
fh      = 11*10^6;      // upper cut-off freq in Hz
BP_fl   = 13*10^6;      // Bandpass filter lower cutoff freq
BP_fh   = 14*10^6;      // Bandpass filter lower cutoff freq

// Calculations
Pn_W    = 10^(Pn/10)*10^-3;     // coversion from dBm to Watts
BW      = fh - fl
PSD     = Pn_W/BW              // Noise power spectral density
// Since white noise has the same spectral power density through the frequency spectrum,
// therefore Noise power in second case
B       = BP_fh - BP_fl
Pn_2    = PSD*B;                // Noise power in second case

// Output
mprintf('Noise power for BandPass filter having Cutoff frequencies 13Mhz and 14Mhz = %3.0e W',Pn_2);
//--------------------------------------------------------------------------------

