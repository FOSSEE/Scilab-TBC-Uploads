// Given:-
m =1.0                                                                            // mass of sample in kg
T1 = 21.0                                                                         // initial temperature in degree celcius
psi1 = 0.7                                                                        // initial relative humidity
T2 = 5.0                                                                          // final temperature in degree celcius

// Part(a)
// From table A-2
pg = 0.02487                                                                      // in bar
// Calculations 
pv1 = psi1*pg                                                                     // partial pressure of water vapor in bar
omega1 = 0.622*(0.2542)/(14.7-0.2542)
// Result 
printf( 'the initial humidity ratio is:  %f',omega1)

// Part(b)
// The dew point temperature is the saturation temperature corresponding to the partial pressure, pv1. Interpolation in Table A-2 gives
T = 15.3                                                                          // the dew point temperature in degree celcius
// Result
printf( 'The dew point temperature in degree celcius is:  %f',T)

// Part(c)
// The partial pressure of the water vapor remaining in the system at the final state is the saturation pressure corresponding to 5C:
// Calculations
mv1 = 1/((1/omega1)+1)                                                           // initial amount of water vapor in the sample in kg
ma = m-mv1                                                                        // mass of dry air present in kg
pg = 0.00872                                                                      // in bar
omega2 = 0.622*(pg)/(1.01325-pg)                                                  // humidity ratio after cooling
mv2 = omega2*ma                                                                   // The mass of the water vapor present at the final state
mw = mv1-mv2

// Result
printf( 'The amount of water vapor that condenses, in kg. is:  %f',mw)
