clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.9   Page 766 \n')// Example 12.9

// Total hemispherical emissivity of fire brick wall
// Total emissive power of brick wall
// Absorptivity of the wall to irradiation from coals

Ts = 500			;//[K] temperature of brick surface
Tc = 2000           ;//[K] Temperature of coal exposed
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant
// From the given graph of emissivities
e1 = .1;    //between wavelength 0 micro-m- 1.5 micro-m
e2 = .5;    //between wavelength 1.5 micro-m- 10 micro-m
e3 = .8;    //greater than wavelength 10 micro-m

//From Table 12.1
//For wl1 = 1.5 micro-m and T = 500 K, At wl1*T = 750 micro-m.K
F0wl1 = 0;
//For wl2 = 10 micro-m and T = 500 K, At wl2*T = 5000 micro-m.K
F0wl2 = .634;
//From equation 12.36
e = e1*F0wl1 + e2*F0wl2 + e3*(1-F0wl1-F0wl2);

//Equation 12.26 and 12.35
E = e*stfncnstt*Ts^4;

//From Table 12.1
//For wl1 = 1.5 micro-m and T = 2000 K, At wl1*T = 3000 micro-m.K
F0wl1c = 0.273;
//For wl2 = 10 micro-m and T = 2000 K, At wl2*T = 20000 micro-m.K
F0wl2c = .986;
ac = e1*F0wl1c + e2*[F0wl2c-F0wl1c] + e3*(1-F0wl2c);

printf('\n Total hemispherical emissivity of fire brick wall = %.3f \n Total emissive power of brick wall = %i W/m^2.\n Absorptivity of the wall to irradiation from coals = %.3f',e,E,ac);