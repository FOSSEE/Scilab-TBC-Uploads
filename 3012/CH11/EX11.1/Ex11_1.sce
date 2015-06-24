// Given:-
m = 4.00                                                                        // mass of carbon monoxide in kg
T = 223.00                                                                      // temperature of carbon monoxide in kelvin
D = 0.2                                                                         // inner diameter of cylinder in meter
L = 1.00                                                                        // length of the cylinder in meter
pi=3.14
// Analysis
M = 28.00                                                                       // molar mass in kg/kmol

// Calculations
V = (pi*D**2.00/4.00)*L                                                         // volume occupied by the gas in m^3
vbar = M*(V/m)                                                                  // The molar specific volume in m^3/kmol

// Part(a)
// From Table A-1 for CO
Tc = 133                                                                        // in kelvin
Pc = 35                                                                         // in bar
Tr = T/Tc                                                                       // reduced temperature
Rbar = 8314                                                                     // universal gas constant in N.m/kmol.K
Z = 0.9
// Calculations
vrdash = (vbar*Pc*10**5)/(Rbar*Tc)                                              // pseudoreduced specific volume
p = (Z*Rbar*T/vbar)*10**-5                                                      // in bar
// Result
printf( '\n part(a)the pressure in bar is:  %.2f bar',p)

// Part(b)
// The ideal gas equation of state gives
// Calculations
p = (Rbar*T/vbar)/10**5                                                          // in bar
// Result
printf( '\n Part(b)the pressure in bar is: %.2f bar',p)

// Part(c)
// For carbon monoxide, the van der Waals constants a and b can be read directly from Table A-24
a = 1.474                                                                        // in (m^3/kmol)^2
b = 0.0395                                                                       // in m^3/kmol
// Calculations
p = (Rbar*T/(vbar-b))/10**5 - a/vbar**2
// Result
printf( '\n Part(c)the pressure in bars is:  %.2f bar',p)

// Part(d)
// For carbon monoxide, the Redlich–Kwong constants can be read directly from Table A-24
a = 17.22                                                                        // in m^6*K^.5/kmol^2
b = 0.02737                                                                      // in m^3/kmol
// Calculations
p = (Rbar*T/(vbar-b))/10**5 - a/(vbar*(vbar+b)*T**.5)
// Result
printf( '\n Part(d)the pressure in bar is:  %.2f bar', p)
