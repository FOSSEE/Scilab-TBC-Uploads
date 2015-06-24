
// Given:-
// The reaction is CO + .5O2  ---   CO2
// Part(a)
T = 298.0                                                                         // in kelvin
Rbar = 8.314                                                                      // universal gas constant in SI units
// From table A-25

hfbarCO2 = -393520.0                                                              // in kj/kmol
hfbarCO = -110530.0                                                               // in kj/kmol
hfbarO2 = 0                                                                       // in kj/kmol
deltahbarCO2 = 0                                                                  // in kj/kmol
deltahbarCO = 0                                                                   // in kj/kmol
deltahbarO2 = 0                                                                   // in kj/kmol
sbarCO2 = 213.69                                                                  // in kj/kmol.K
sbarCO = 197.54                                                                   // in kj/kmol.K
sbarO2 = 205.03                                                                   // in kj/kmol.K
// From table A-27
logKtable = 45.066
// Calculations
deltaG = (hfbarCO2-hfbarCO-.5*hfbarO2) + (deltahbarCO2-deltahbarCO-.5*deltahbarO2) - T*(sbarCO2-sbarCO-.5*sbarO2)
lnK = -deltaG/(Rbar*T)
logK = (1/log(10))*lnK
// Results
printf( ' Part(a) the value of equilibrium constant expressed as log10K is:  %f',logK);
printf( ' The value of equilibrium constant expressed as log10K from table A-27 is: %f ',logKtable);

// Part(b)
T = 2000.0                                                                        // in kelvin
// From table A-23
hfbarCO2 = -393520.0                                                              // in kj/kmol
hfbarCO = -110530.0                                                               // in kj/kmol
hfbarO2 = 0                                                                       // in kj/kmol
deltahbarCO2 = 100804-9364                                                        // in kj/kmol
deltahbarCO = 65408 - 8669                                                        // in kj/kmol
deltahbarO2 = 67881 - 8682                                                        // in kj/kmol
sbarCO2 = 309.210                                                                 // in kj/kmol.K
sbarCO = 258.6                                                                    // in kj/kmol.K
sbarO2 = 268.655                                                                  // in kj/kmol.K
// Calculations
deltaG = (hfbarCO2-hfbarCO-.5*hfbarO2) + (deltahbarCO2-deltahbarCO-.5*deltahbarO2) - T*(sbarCO2-sbarCO-.5*sbarO2)
lnK = -deltaG/(Rbar*T)
logK = (1/log(10))*lnK
// From table A-27
logKtable = 2.884
// Results
printf( ' Part(b) the value of equilibrium constant expressed as log10K is: %f ',logK);
printf( ' The value of equilibrium constant expressed as log10K from table A-27 is: %f ',logKtable);
