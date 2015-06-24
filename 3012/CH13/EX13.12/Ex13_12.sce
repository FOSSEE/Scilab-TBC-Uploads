
// Given:-
// Complete combustion of liquid octane with O2 is described by
// C8H18(l) + 12.5O2   -----   8CO2 + 9H2O

// Part(a)
Rbar = 8.314                                                                    // universal gas constant in SI units
Tnot = 298.15                                                                   // in kelvin
// From table A-25
gbarC8H18 = 6610.0
gbarO2 = 0
gbarCO2 = -394380
gbarH2O = -228590
yO2 = 0.2035
yCO2 = 0.0003
yH2O = 0.0312
M = 114.22                                                                      // molecular weight of liquid octane

// Calculations
ech = ((gbarC8H18 + 12.5*gbarO2 -8*gbarCO2 -9*gbarH2O) + Rbar*Tnot*log(yO2**12.5/(yCO2**8*yH2O**9    )))/M
// Result
printf( ' Part(a) the chemical exergy obtained on a unit mass basis is:  %.2f kJ/K',ech)

// Part(b)
// With data from Table A-25 and Model II of Table A-26
gbarH2O = -237180.0
ebarCO2 = 19870.0
ebarH2O = 900.0
ebarO2 = 3970.0

// Calculation
ech = ((gbarC8H18 + 12.5*gbarO2 -8*gbarCO2 - 9*gbarH2O) + 8*ebarCO2 + 9*ebarH2O - 12.5*ebarO2)/M
// Result
printf( ' Part(b) chemical exergy on a unit mass basis is: %.3f kJ/K',ech)
