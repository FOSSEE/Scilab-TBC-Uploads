// Given:-
T1 = 300.00                                                                     // in kelvin
AV = 5.00                                                                       // volumetric flow rate in m^3/s
p1 = 100.00                                                                     // in kpa
pr = 10.00                                                                      // compressor pressure ratio
T3 = 1400.00                                                                    // turbine inlet temperature in kelvin

// Analysis
// At state 1, the temperature is 300 K. From Table A-22,
h1 = 300.19                                                                     // in kj/kg
pr1 = 1.386


// Interpolating in Table A-22,
h2 = 579.9                                                                      // in kj/kg
// From Table A-22
h3 = 1515.4                                                                     // in kj/kg
pr3 = 450.5

// Interpolating in Table A-22, we get
h4 = 808.5                                                                      // in kj/kg

// calculations
pr2 = pr*pr1
pr4 = pr3*1/pr


// Part(a)
eta = ((h3-h4)-(h2-h1))/(h3-h2)                                                 // thermal efficiency
// Result
printf( ' The thermal efficiency is : %.4f ',eta)

// Part(b)
bwr = (h2-h1)/(h3-h4)                                                           // back work ratio
// Result
printf( ' The back work ratio is : %.4f',bwr)

// Part(c)
R = 8.314                                                                       // universal gas constant, in SI units
M = 28.97                                                                       // molar mass of air in grams
// Calculations
mdot = AV*p1/((R/M)*T1)                                                         // mass flow rate in kg/s
Wcycledot = mdot*((h3-h4)-(h2-h1))                                              // The net power developed
// Result
printf( ' The net power developed, is : %.2f kW .',Wcycledot)
