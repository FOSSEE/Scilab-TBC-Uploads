// Given:-
y1 = 0.8                                                                        // mole fraction of CO2
y2 = 0.2                                                                        // mole fraction of O2
T1 = 700.0                                                                      // in kelvin
p1 = 5.0                                                                        // in bars
V1 = 3.0                                                                        // in m/s
p2 = 1.0                                                                        // in bars


// Part(a)
// From table A-23
sO2barT1 = 231.358
sCO2barT1 = 250.663
// Calculations

RHS = y2*sO2barT1 + y1*sCO2barT1 + 8.314*log(p2/p1)
// Using table A-23
LHSat510K = y2*221.206 + y1*235.7
LHSat520K = y2*221.812 + y1*236.575
// Using linear interpolation,
T2 = 510 +((520-510)/(LHSat520K-LHSat510K))*(RHS-LHSat510K)
// Result 
printf( 'The temperature at the nozzle exit in K is:  %f',T2);

// Part(b)
// From table A-23
sbarO2T2 = 221.667                                                              // in kj/kmol.K
sbarO2T1 = 231.358                                                              // in kj/kmol.K
sbarCO2T2 = 236.365                                                             // in kj/kmol.K
sbarCO2T1 = 250.663                                                             // in kj/kmol.K
// Calculations
deltasbarO2 = sbarO2T2-sbarO2T1-8.314*log(p2/p1)                           // in kj/kmol.K
deltasbarCO2 = sbarCO2T2-sbarCO2T1-8.314*log(p2/p1)                        // in kj/kmol.K
// Results
printf( 'The entropy changes of the CO2 from inlet to exit, in KJ/Kmol.K is:  %f',deltasbarCO2)
printf( 'The entropy change of the O2 from inlet to the exit in kj/kmol.k is:  %f',deltasbarO2)

// Part(c)
// From table A-23, the molar specific enthalpies of O2 and CO2 are
h1barO2 = 21184.0
h2barO2 = 15320.0
h1barCO2 = 27125.0
h2barCO2 = 18468.0
// Calculations
M = y1*44.0 + y2*32.0                                                            // apparent molecular weight of the mixture in kg/kmol
deltah = (1.0/M)*(y2*(h1barO2-h2barO2) + y1*(h1barCO2-h2barCO2))
V2 = sqrt(V1**2+ 2*deltah*10**3)
// Result
printf( 'The exit velocity in m/s is:  %f',V2)
