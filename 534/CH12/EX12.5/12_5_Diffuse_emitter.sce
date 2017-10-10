clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.5   Page 748 \n')// Example 12.5

// Total hemispherical emissivity
// Total emissive Power
// Wavelength at which spectral emissive power will be maximum

T = 1600			;//[K] temperature of surface
wl1 = 2            ;//[micro-m] wavelength 1
wl2 = 5            ;//[micro-m] wavelength 2
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant
// From the given graph of emissivities
e1 = .4;
e2 = .8;
//From Equation 12.26 Black Body Radiation
Eb = stfncnstt*T^4;        //[W/m^2]

//Solution (A)
//From Table 12.1 as wl1*T = 2*1600 (micro-m.K)
F02 = .318;
//From Table 12.1 as wl2*T = 5*1600 (micro-m.K)
F05 = .856;
//From Equation 12.36
e = e1*F02 + e2*[F05 - F02];

//Solution (B)
//From equation 12.35
E = e*Eb;

//Solution (C)
//For maximum condition Using Weins Law
consttmax = 2898        ;//[micro-m.K]
wlmax = consttmax/T;

//equation 12.32 with Table 12.1
E1 = %pi*e1*.722*10^-4*stfncnstt*T^5;

E2 = %pi*e2*.706*10^-4*stfncnstt*T^5;

printf("\n (a) Total hemispherical emissivity = %.3f \n (b) Total emissive Power = %i kW/m^2 \n (c) Emissive Power at wavelength 2micro-m is greater than Emissive power at maximum wavelength \n     i.e. %.1f kW/m^2 > %.1f kW/m^2 \n     Thus, Peak emission occurs at %i micro-m",e,E/1000,E2/1000,E1/1000,wl1);
//END



