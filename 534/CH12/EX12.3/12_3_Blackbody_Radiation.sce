clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.3   Page 741 \n')// Example 12.3

// Spectral Emissive Power of a small aperture on the enclosure
// wavelengths below which and above which 10% of the radiation is concentrated
// Spectral emissive power and wavelength associated with maximum emission
// Irradiation on a small object inside the enclosure

T = 2000			;//[K] temperature of surface
stfncnstt = 5.67*10^-8		;//[W/m^2.K^4] Stefan-Boltzmann constant
E = stfncnstt*T^4;        //[W/m^2]

//From Table 12.1 
constt1 = 2195    ;    //[micro-m.K]
wl1 = constt1/T;
//From Table 12.1 
constt2 = 9382   ;     //[micro-m.K]
wl2 = constt2/T;

//From Weins Law, wlmax*T = consttmax = 2898 micro-m.K
consttmax = 2898         ;//micro-m.K
wlmax = consttmax/T;
//from Table 12.1 at wlmax = 1.45 micro-m.K and T = 2000 K
I = .722*10^-4*stfncnstt*T^5;
Eb = %pi*I;

G = E;        //[W/m^2] Irradiation of any small object inside the enclosure is equal to emission from blackbody at enclosure temperature

printf("\n (a) Spectral Emissive Power of a small aperture on the enclosure = %.2e W/m^2.Sr for each of the three directions \n (b) Wavelength below which 10percent of the radiation is concentrated = %.1f micro-m \n     Wavelength above which 10percent of the radiation is concentrated = %.2f micro-m \n (c) Spectral emissive power and wavelength associated with maximum emission is %.2e micro-m and %.2e W/m^2.micro-m respectively \n (d) Irradiation on a small object inside the enclosure = %.2e W/m^2",E,wl1,wl2,Eb,wlmax,G);
//END



