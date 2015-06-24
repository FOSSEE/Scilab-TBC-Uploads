// chapter 7 example 3
//-----------------------------------------------------------------------------
clc;
clear;
// given data
AZ_BW      = 0.5;      // beamwidth in degrees
E_BW       = 0.5;      // beamwidth in degrees
lamda      = 3*10^-2;  // radar emission wavelength

// Calculations

AZ_BW_r    = AZ_BW*%pi/180;     // azimuth beamwidth in radians
E_BW_r     = E_BW*%pi/180;     // elevation beamwidth in radians
G          = (4*%pi)/(AZ_BW_r *E_BW_r )     // antenna gain
G_db       = 10*log10(G)        // gain in dB
A          = (G*lamda*lamda)/(4*%pi);   // antenna aperture

// Output
mprintf('Gain of Antenna = %3.2f dB\n Antenna Aperture = %3.3f m',G_db,A);
//------------------------------------------------------------------------------
