
// Given:-
Rbar = 8.314                                                                    // universal gas constant in SI units
// The chemical equation for the complete combustion of methane with oxygen is
// CH4 + 2O2 ---  CO2 + 2H2O
yCH4 = 1.0/3.0
yO2 = 2.0/3.0
yCO2 = 1.0/3.0
yH2O = 2.0/3.0
// From table A-25
sbarCH4atTref = 186.16                                                          // in kj/kmol.K
sbarO2atTref = 205.03                                                           // in kj/kmol.K
p2 = 3.02                                                                       // in atm
pref = 1.0                                                                      // in atm

// Calculations
sbarCH4 = sbarCH4atTref - Rbar*log(yCH4)
sbarO2 = sbarO2atTref - Rbar*log(yO2)
// With help from table A-23
sbarCO2 = 263.559 - Rbar*log(yCO2*p2/pref)                                 // in kj/kmol.K
sbarH2O = 228.321 - Rbar*log(yH2O*p2/pref)                                 // in kj/kmol.K
deltaS = sbarCO2 + 2*sbarH2O - sbarCH4 -2*sbarO2                                // in kj/K

// Result
printf( ' The change in entropy of the system  is: %.2f kJ/K ',deltaS)
