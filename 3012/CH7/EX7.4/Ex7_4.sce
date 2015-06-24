// Given:-
T0 = 293.00                                         // in kelvin
Qdot = -1.2                                         // in KW, from example 6.4a
Tb = 300.00                                         // temperature at the outer surface of the gearbox in kelvin from example 6.4a
sigmadot = 0.004                                    // rate of entropy production in KW/k from example 6.4a

// Calculations
R = -(1-T0/Tb)*Qdot                                  // time rate of exergy transfer accompanying heat
Eddot = T0*sigmadot                                 // rate of exergy destruction

// Results
printf( ' Balance sheet');
printf( '\n Rate of exergy in high speed shaft 60Kw' )
printf( '\n Disposition of the exergy: Rate of exergy out low-speed shaft %.1f Kw',58.8 )
printf( '\n Heat transfer is %.3f kw.',R)
printf( '\n Rate of exergy destruction is %.3f kw',Eddot)
