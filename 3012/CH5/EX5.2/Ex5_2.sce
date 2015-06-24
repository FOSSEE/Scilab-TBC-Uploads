// Given :-
Qcdot = 8000.00                                // in kj/h
Wcycledot = 3200.00                            // in kj/h
Tc = 268.00                                    // temperature of compartment in kelvin
TH = 295.00                                    // temperature of the surrounding air in kelvin

// Calculations 
beta = Qcdot/Wcycledot                         // coefficient of performance
betamax = Tc/(TH-Tc)                           // reversible coefficient of performance

// Results
printf( ' Coefficient of performance is %.3f',beta)
printf( ' Coefficient of performance of a reversible cycle is  %.3f',betamax)
