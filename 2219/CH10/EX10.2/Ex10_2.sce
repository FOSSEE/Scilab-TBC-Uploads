// Chapter 10 example 1
//------------------------------------------------------------------------------
clc;
clear;
f       = 10*10^9;          // center freq. in Hz
f_us    = 60*10^3;          // upsweep freq. in Hz
f_ds    = 80*10^3;          // down sweep freq. in Hz
fm      = 100;              // modulation freq. in Hz
B       = 2*10^6;           // sweep bandwidth in Hz
c       = 3*10^8;           // vel. of EM waves in m/s
T       = 5*10^-3;

// Calculations
fd      = (f_ds - f_us)/2;      
df      = (f_ds + f_us)/2; 
R       = (c*T*df)/(2*B);       // range in m
// fd   = (2*Vr*f)/c
Vr      = (c*fd)/(2*f);         // target radial velocity
Vr_kmph = Vr*(18/5);            // target radial velocity in kmph
Vr_nmph = Vr_kmph/1.85;         // target radial velocity in Nautical miles per hour

// Output
mprintf('Target Range = %3.2f Km\n Radial velocity = %3.1f Nmi/hr',R/1000,Vr_nmph);
//-----------------------------------------------------------------------------
