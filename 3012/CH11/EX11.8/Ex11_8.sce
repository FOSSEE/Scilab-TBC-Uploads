// Given:-
p1 = 100.00                                                                     // in bar
T1 = 300.00                                                                     // in kelvin
p2 = 40.00                                                                      // in bar
T2 = 245.00                                                                     // in kelvin


// From table A-23
h1starbar = 8723.00                                                             // in kj/kmol
h2starbar = 7121.00                                                             // in kj/kmol
// From Tables A-1
Tc = 126.00                                                                     // critical temperature in kelvin
pc = 33.9                                                                       // critical pressure in bar
M = 28.00                                                                       // molar mass in kg/kmol
Rbar = 8.314                                                                    // universal gas constant in kj/(kmol.K)
Term1 = 0.5                                                                      
Term2 = 0.31

// Calculations
TR1 = T1/Tc                                                                     // reduced temperature at the inlet
PR1 = p1/pc                                                                     // reduced pressure at the inlet
TR2 = T2/Tc                                                                     // reduced temperature at the exit
PR2 = p2/pc                                                                     // reduced pressure at the exit
wcvdot = (1.00/M)*(h1starbar-h2starbar-Rbar*Tc*(Term1-Term2))                      // in kj/kg

// Result
printf( ' The work developed, in kJ per kg of nitrogen flowing is :  %.2f',wcvdot)
