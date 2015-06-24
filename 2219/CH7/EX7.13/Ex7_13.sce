// chapter 7 example 13
//-----------------------------------------------------------------------------
clc;
clear;
// given data
f       = 60*10^6;      // frequency in Hz
c       = 3*10^8        // velocity of EM wave in m/s

// Calculations
lamda   = c/f;          // wavelength in m
l_dipole= lamda/2       // length of diplole
// Physical length of antenna is made 5% shorter than desired length as per rule of thumb
L       = l_dipole - (5/100)*l_dipole;  // actual physical length
L_D     = L - (4/100)*L;                // length of director
L_R     = L + (4/100)*L;                // length of reflector
DDS     = 0.12*lamda;                   // director dipole spacing
RDS     = 0.2*lamda;                    // Reflector dipole spacing

// Output
mprintf('Length of dipole = %3.3f m\n length of Director = %3.2f m\n length of Reflector = %3.2f m\n director dipole spacing = %3.1f m\n Reflector dipole spacing = %3.1f m',L,L_D,L_R,DDS,RDS);
//------------------------------------------------------------------------------

