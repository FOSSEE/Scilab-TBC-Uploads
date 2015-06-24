// Given:-
p1 = 1.00                                                                          // in bar
T1 = 270.00                                                                        // in kelvin
AV = 1.4                                                                           // in m^3/s
r = 3.00                                                                           // compressor pressure ratio
T3 = 300.00                                                                        // turbine inlet temperature in kelvin

// Analysis
// From Table A-22,
h1 = 270.11                                                                        // in kj/kg
pr1 = 0.9590
// Interpolating in Table A-22,
h2s = 370.1                                                                        // in kj/kg
// From Table A-22,
h3 = 300.19                                                                        // in kj/kg
pr3 = 1.3860
// Interpolating in Table A-22, we obtain
h4s = 219.00                                                                       // in kj/kg
// Calculations
pr2 = r*pr1
pr4 = pr3/r

// Part(a)
R = 8.314                                                                          // universal gas constant, in SI units
M = 28.97                                                                          // molar mass of air in grams

// Results
mdot = (AV*p1)/((R/M)*T1)*10**2                                                    // mass flow rate in kg/s
Wcycledot = mdot*((h2s-h1)-(h3-h4s))
printf( ' The net power input in kw is:  %.2f',Wcycledot)

// Part(b)
Qindot = mdot*(h1-h4s)                                                             // refrigeration capacity in kw
printf( ' The refregeration capacity in kw is:  %.2f',Qindot)

// Part(c)
beta = Qindot/Wcycledot                                                            // coefficient of performance
printf( 'The coefficient of performance is:  %.2f',beta)
