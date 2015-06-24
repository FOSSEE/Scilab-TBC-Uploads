// chapter 7 example 6
//-----------------------------------------------------------------------------
clc;
clear;
// given data
D       = 3;        // diameter of the antenna in m
n_l     = 0.7;      // length efficiency
nr      = 0.9;      // radiation efficiency
f       = 10*10^9;  // antenna operating freq.
c       = 3*10^8;   // vel of EM waves in m/s

// calculations
def     = D*n_l    // Effective diameter
lamda   = c/f      // wavelength in m
Beam_w  = lamda/def // beamwidth in radian
Beam_w_d= Beam_w*180/%pi;       // beam width in degree;
n_a     = n_l * n_l;    // Aperture efficiency
AA      = (%pi*D*D)/4;  // actual area in sq m
Ae      = AA*n_a;       // Effective aperture
G       = (4*%pi*Ae)/(lamda^2); // Gain
G_db    = 10*log10(G);

// Output
mprintf('Beam Width = %3.2f degrees\n Effective Aperture = %3.2fsq m\n Gain = %3.1f dB',Beam_w_d,Ae,G_db);
//-------------------------------------------------------------------------------
