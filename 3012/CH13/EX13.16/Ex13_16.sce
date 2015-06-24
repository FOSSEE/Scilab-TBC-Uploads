
// Given:-
Tnot = 298                                                                       // in kelvin

// For the case of complete combustion with the theoretical amount of air
sigmadot = 5404.0                                                                // rate of entropy production from example 13.9, in kj/kmol.K
Efdot = 5407843.0                                                                // rate at which exergy enters with the fuel from example 13.12, in kj/kmol
// Calculations:-
Eddot = Tnot*sigmadot                                                            // in kj/kmol
epsilon = 1-Eddot/Efdot
// Result
printf( ' The exergetic efficiency with theoretical amount of air is:  %.3f',epsilon)

// For the case of combustion with 400% theoretical air
sigmadot = 9754.0                                                                 // rate of entropy production from example 13.9, in kj/kmol.K
// Calculations
Eddot = Tnot*sigmadot                                                             // in kj/kmol
epsilon = 1-Eddot/Efdot
// Result
printf( 'The exergetic efficiency with 400 percent theoretical amount of air is: %.3f ',epsilon)
