
// Given:-
// With data from Table A-2 at 20C,
vf = 1.0018e-3                                                                  // in m^3/kg
psat = 0.0239                                                                   // in bar
p = 1.0                                                                         // in bar
T = 293.15                                                                      // in kelvin
Rbar = 8.314                                                                    // universal gas constant in SI units
M = 18.02                                                                       // molat mass of water in kg/kmol
e=2.715

// Calculations
pvbypsat = e**(vf*(p-psat)*10**5/((1000*Rbar/M)*T))
percent = (pvbypsat-1)*100

// Result
printf( ' The departure, in percent, of the partial pressure of the water vapor from the saturation pressure of water at 20 is: %.3f',percent)
