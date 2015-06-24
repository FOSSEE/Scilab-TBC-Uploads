// Given:-
// Part(a)
wcdots = 99.99                                                              // work per unit mass for the isentropic compression determined with data from the solution in Example 10.4 in kj/kg
mdot = 1.807                                                                // mass flow rate in kg/s from 10.4
etac = 0.8                                                                  // isentropic efficiency of compressor
Wcdot = (mdot*wcdots)/etac                                                  // The power input to the compressor in kw

// Using data form the solution to Example 10.4 gives
wtdots =81.19                                                               // in kj/kg
etat = 0.8                                                                  // isentropic efficiency of turbine
// Calculations
Wtdot = mdot*etat*wtdots                                                    // actual turbine work in kw
Wdotcycle = Wcdot-Wtdot                                                     // The net power input to the cycle in kw
// Result
printf( ' The net power input in kw is:  %.2f',Wdotcycle)

// Part(b)
h3 = 300.19                                                                 // in kj/kg
// From table A-22
h1 = 270.11                                                                 // in kj/kg
// Calculations
h4 = h3 -Wtdot/mdot
Qindot = mdot*(h1-h4)                                                       // refrigeration capacity in kw
// Result
printf( ' The refrigeration capacity in kw is:  %.2f',Qindot)

// Part(c)
beta = Qindot/Wdotcycle                                                     // coefficient of performance 
// Result
printf( ' The coefficient of performance is:  %.2f',beta)
