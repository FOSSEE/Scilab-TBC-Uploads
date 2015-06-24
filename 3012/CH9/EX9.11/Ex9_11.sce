// Given:-
T1 = 300.00                                                                        // in kelvin
p1 = 100.00                                                                        // in kpa
mdot = 5.807                                                                       // in kg/s
p2 = 300.00                                                                        // in kpa
p3 = p2
p4 = 1000.00                                                                       // in kpa
p5 = p4
p6 = p4
T6 = 1400.00                                                                       // in kelvin
T8 = T6
p7 = 300.00                                                                        // in kpa
p8 = p7
etac = 0.8                                                                         // isentropic efficiency of compressor
etat = 0.8                                                                         // isentropic efficiency of turbine
etareg = 0.8                                                                       // regenerator effectiveness
// Analysis
// From example 9.9
h1 = 300.19                                                                        // in kj/kg
h3 = h1                                                                            // in kj/kg
h2s = 411.3                                                                        // in kj/kg
h4s = 423.8                                                                        // in kj/kg
// From example 9.8
h6 = 1515.4                                                                        // in kj/kg
h8 = h6
h7s = 1095.9                                                                       // in kj/kg
h9s = 1127.6                                                                       // in kj/kg

// Calculations
h4 = h3 + (h4s-h3)/etac                                                            // in kj/kg
h2 = h1 + (h2s-h1)/etac                                                            // in kj/kg
h9 = h8-etat*(h8-h9s)                                                              // in kj/kg
h7 = h6-etat*(h6-h7s)                                                              // in kj/kg
h5 = h4+etareg*(h9-h4)                                                             // in kj/kg

// Part(a)
// Calculations
wtdot = (h6-h7)+(h8-h9)                                                            // The total turbine work per unit of mass flow in kj/kg
wcdot = (h2-h1)+(h4-h3)                                                            // The total compressor work input per unit of mass flow in kj/kg
qindot = (h6-h5)+(h8-h7)                                                           // The total heat added per unit of mass flow in kj/kg
eta = (wtdot-wcdot)/qindot                                                         // thermal efficiency
// Result
printf( ' The thermal efficiency is:  %.2f',eta)

// Part(b)
bwr = wcdot/wtdot                                                                  // back work ratio
// Result
printf( ' The back work ratio is: %.2f',bwr)

// Part(c)
Wcycledot = mdot*(wtdot-wcdot)                                                     // net power developed in kw
// Result
printf( ' The net power developed, is: %.2f kW.',Wcycledot)
