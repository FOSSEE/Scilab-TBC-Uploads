//Chapter-11 example 37
//=============================================================================
clc;
clear;
//Given data

Pt        = 500*10^3;   // Peak pulse power in Watts
pt        = 50;         // peak power transmitted by beacon in watts
f         = 2500*10^6;  // Radar Operating frequency in Hz
lamda     = 0.12;       // wavelength in m
D         = 64;         // antenna diameter in m
BW        = 5000;       // Radar Bandwidth
Ab        = 0.51;
k         =  1.38*10^-23;  // Boltzmann constant
F         = 20             // Noise figure 
Fb        = 1.1            // Noise figure of beacon
To        = 290;           // Temperature in kelvin
 
//Calculations

Ar        = (0.65*%pi*D*D)/4
Rmax      = sqrt((Ar*Pt*Ab)/(lamda*lamda*k*To*BW*(F-1)));  // Max tracking range of radar

Rmax1      = sqrt((Ar*pt*Ab)/(lamda*lamda*k*To*BW*(Fb-1))); // Max tracking range of radar if Fb = 1.1

//output
mprintf('Maximum Tracking Range of Radar is %3.3e Km\n Range of beacon if noise figure is 1.1 = %3.3e Km\n ',Rmax/1000,Rmax1/1000);
mprintf('Note: Calculation mistake in textbook in calculating Range of beacon\n instead of 1.36*10^9 km range is wrongly printed as 136*10^6 km')

//======================end of program==========================================



