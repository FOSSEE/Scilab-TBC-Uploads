//Chapter-11 example 21
//=============================================================================
clc;
clear;
//input data
Noise_power = -50;//noise power in dBm
Fl = 1*10^6;//lower cutoff frequency in Hz
Fh = 21*10^6;//upper cutoff frequency in Hz

//calculation
BW = Fh-Fl;//bandwidth
NP =10^-8//noise power in watts; -50dBm = 10log10(NP) =>10^-5 mwatts
NPSD = NP/BW;//noise power spectral density in W/Hz

//output
mprintf('Noise Power Spectral Density is %3.0e W/Hz',NPSD);

//==============end of the program=============================================
