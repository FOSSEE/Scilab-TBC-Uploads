// Given:-
P1 = 1.00                                              // inlet pressure in bar
T1 = 593.00                                            // inlet temperature in kelvin
P2 = 1.00                                              // exit pressure in bar
eta =0.75                                              // turbine efficiency

// From table A-4
h1 = 3105.6                                            // in Kj/kg
s1 = 7.5308                                            // in kj/kg.k
// From table A-4 at 1 bar
h2s = 2743.00                                          // in kj/kg

// Calculations
w = eta*(h1 - h2s)

// Result
printf( ' The work developed per unit mass of steam flowing through is %f kJ/kg.',w);
