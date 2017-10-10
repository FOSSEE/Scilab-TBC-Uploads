clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.6   Page 751 \n')// Example 12.6

// Spectral , Normal emissivity en and spectral hemispherical emissivity e
// Spectral normal intensity In and Spectral emissive power

T = 2000			;//[K] temperature of surface
wl = 1            ;//[micro-m] wavelength 
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant

// From the given graph of emissivities
e1 = .3;
e2 = .6;
//From Equation 12.26 Black Body Radiation
Eb = stfncnstt*T^4;        //[W/m^2]

//Equation 12.34
i1 = integrate('e1*cos(x)*sin(x)','x',0,%pi/3);
i2 = integrate('e2*cos(x)*sin(x)','x',%pi/3,4*%pi/9);
e = 2*[i1+i2];

// From Table 12.1 at wl = 1 micro-m and T = 2000 K.

I = .493*10^-4 * stfncnstt*T^5        ;//[W/m^2.micro-m.sr]

In = e1*I;

//Using Equation 12.32 for wl = 1 micro-m and T = 2000 K
E = e*%pi*I;

printf('\n Spectral Normal emissivity en = %.1f and spectral hemispherical emissivity e = %.2f \n Spectral normal intensity In = %.2e W/m^2.micro-m.sr and Spectral emissive power = %.1e W/m^2.micro-m.sr ', e1, e,In,E);