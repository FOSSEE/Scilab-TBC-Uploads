
// Given:-
Rbar = 8.314                                                                // universal gas constant in SI units
Tnot = 298.0                                                                // in kelvin
// With data from the steam tables
h = 2939.9                                                                  // in kj/kg
hnot = 104.9                                                                // in kj/kg
s = 7.2307                                                                  // in kj/kg
snot = 0.3674                                                               // in kj/kg
// With data from Table A-25
gbarH2Oliq = -237180.0
gbarH2Ogas = -228590.0
yeH2O = 0.0303
M =18.0                                                                     // molar mass of steam

// Calculations
ech = (1.0/M)*(gbarH2Oliq-gbarH2Ogas + Rbar*Tnot*log(1/yeH2O))         // in kj/kg
ef = h-hnot-Tnot*(s-snot) + ech                                             // in kj/kg

// Result
printf( ' The flow exergy of the steam, in is:  %.2f kJ/kg ',ef)
