// chapter 7 example 8
//-----------------------------------------------------------------------------
clc;
clear;
// given data
a_l     = 6;        // Azimuth length in m
n_a     = 0.7;      // Azimuth length efficiency
n_e     = 0.5;      // elevation length efficiency
e_l     = 4;        // elevation length in m
w       = 6;        // width of antenna
h       = 4;        // height of antenna 
lamda   = 3*10^-2;  // wavelength

// Calculations
Eff_A_l = a_l*n_a;  // effective azimuth length
Eff_E_l = e_l*n_e;  // effective elevation length
A       = w*h       // actual area
n       = n_a*n_e;  // aperture efficiency
Ae      = A*n;      // effective aperture
Az_BW   = lamda/Eff_A_l  // Azimuth beam width
E_BW    = lamda/Eff_E_l  // elevation beam width
Az_BW_d = Az_BW*180/%pi  // rad to deg conv
E_BW_d  = E_BW*180/%pi;  // rad to deg conv
G       = (4*%pi*Ae)/(lamda^2); //Gain
G_dB    = 10*log10(G);  // gain in dB

// Output
mprintf('Azimuth Beamwidth = %3.2f degrees\n Elevation Beamwidth = %3.2f degrees\n Gain = %3.1f dB',Az_BW_d,E_BW_d,G_dB);
//-------------------------------------------------------------------------------
