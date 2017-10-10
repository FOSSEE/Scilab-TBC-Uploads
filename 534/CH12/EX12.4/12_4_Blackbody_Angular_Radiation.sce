clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.4   Page 743 \n')// Example 12.4

// Rate of emission per unit area over all directions between 0 degC and 60 degC and over all wavelengths between wavelengths 2 and 4 micro-m

T = 1500			;//[K] temperature of surface
stfncnstt = 5.67*10^-8		;//[W/m^2.K^4] Stefan-Boltzmann constant

//From Equation 12.26 Black Body Radiation
Eb = stfncnstt*T^4;        //[W/m^2]

//From Table 12.1 as wl1*T = 2*1500 (micro-m.K)
F02 = .273;
//From Table 12.1 as wl2*T = 4*1500 (micro-m.K)
F04 = .738;

//From equation 12.10 and 12.11
i1 = integrate('2*cos(x)*sin(x)','x',0,%pi/3);
delE = i1*(F04-F02)*Eb;

printf("\n Rate of emission per unit area over all directions between 0 degC and 60 degC and over all wavelengths between wavelengths 2 micro-m and 4 micro-m = %.1e W/m^2",delE);
//END



