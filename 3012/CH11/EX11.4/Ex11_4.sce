// Given:-
// Analysis
// For comparison, Table A-2 gives at 100C,
hgf =2257.00                                                                    // in kj/kg
ugf = 2087.6                                                                    // in kj/kg
sgf = 6.048                                                                     // in kj/kg.K
// Values
printf( ' From table, hg-hf = %.2f',hgf);
printf( ' From table, ug-uf = %.2f',ugf);
printf( ' From table, sg-sf = %.2f',sgf);

// Part(a)
T = 373.15                                                                      // in kelvin
// If we plot a graph between temperature and saturation pressure using saturation pressure–temperature data from the steam tables, the desired slope is:
delpbydelT = 3570.00                                                            // in N/(m^2.K)
vg = 1.673                                                                      // in m^3/kg
vf = 1.0435e-3                                                                  // in m^3/kg
// Calculations
// From the Clapeyron equation
hgf = T*(vg-vf)*delpbydelT*10**-3                                               // in kj/kg
// Result
printf( '\n Part(a)using Clapeyron equation, hg-hf = %.2f KJ/kg', hgf);

// Part(b)
psat = 1.014e5                                                                  // in N/m^2
hgf = 2256.00                                                                   // can be obtained using IT software in kj/kg
// Calculations
ugf = hgf - psat*(vg-vf)/10**3                                                  // in kj/kg
// Result
printf( '\n Part(b)ug-uf = %.2f KJ/kg',ugf)
// Part(c)
// Calculation
sgf =hgf/T                                                                      // in kj/kg.K         
// Result
printf( '\n Part(c)sg-sf = %.2f  KJ/kg. k',sgf)
