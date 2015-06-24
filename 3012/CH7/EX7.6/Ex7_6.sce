// Given:-
T1 = 610.0                                                // temperature of the air entering heat exchanger in kelvin
p1 = 10.0                                                 // pressure of the air entering heat exchanger in bar
T2 = 860.0                                                // temperature of the air exiting the heat exchanger in kelvin
p2 = 9.70                                                 // pressure of the air exiting the heat exchanger in bar
T3 = 1020.0                                               // temperature of entering hot combustion gas in kelvin
p3 = 1.10                                                 // pressure of entering hot  combustion gas in bar
p4 = 1.0                                                  // pressure of exiting hot combustion gas in bar
mdot = 90.0                                               // mass flow rate in kg/s
T0 = 300.0                                                // in kelvin
p0 = 1.0                                                  // in bar

// Part (a)
// From table A-22
h1 = 617.53                                               // in kj/kg
h2 = 888.27                                               // in kj/kg
h3 = 1068.89                                              // in kj/kg

// Calculations
h4 = h3+h1-h2

// Using interpolation in table A-22 gives
T4 = 778                                                  // in kelvin

// Results
printf( ' The exit temperature of the combustion gas   is %f kelvin.',T4);

// Part(b)
// From table A-22
s2 = 2.79783                                              // in kj/kg.k
s1 = 2.42644                                              // in kj/kg.k
s4 = 2.68769                                              // in kj/kg.k
s3 = 2.99034                                              // in kj/kg.k

// Calculations for part b

deltaR = (mdot*((h2-h1)-T0*(s2-s1-(8.314/28.97)*log(p2/p1))))/1000
deltRc = mdot*((h4-h3)-T0*(s4-s3-(8.314/28.97)*log(p4/p3)))/1000

// Results for part b
printf( ' The net change in the flow exergy rate from inlet to exit of compressed gas   is %.3f MW.',deltaR)
printf( ' The net change in the flow exergy rate from inlet to exit of hot combustion gas   is %.3f MW.',deltRc)

// Part(c)
//From an exergy rate balance
Eddot = -deltaR-deltRc

// Results 
printf( ' The rate exergy  destroyed,   is %.3f MW.',Eddot)
