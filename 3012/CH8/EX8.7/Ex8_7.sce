
// Given:-
// Analysis
// The solution to Example 8.2 gives
h1 = 2758                                                                   // in kj/kg
h4 = 183.36                                                                 // in kj/kg
// From table A-22
hi = 1491.44                                                                // in kj/kg
he = 843.98                                                                 // in kj/kg
// Using the conservation of mass principle and energy rate balance, the ratio of mass flow rates of air and water is
madotbymdot = (h1-h4)/(hi-he)
// From example 8.2
mdot = 4.449e5                                                              // in kg/h
madot =  madotbymdot*mdot                                                   // in kg/h

// Part(a)
T0 = 295                                                                    // in kelvin
// From table A-22
si = 3.34474                                                                // in kj/kg.k
se = 2.74504                                                                // in MW
// Calculation
Rin = madot*(hi-he-T0*(si-se))/(3600*10**3)                                 // The net rate at which exergy is carried into the heat exchanger 
                                                                            // unit by the gaseous stream 
// Result
printf('The net rate at which exergy is carried into the heat exchanger unit by the gas stream, is : %.2f MW ',Rin)

// Part(b)
// From table A-3
s1 = 5.7432                                                                 // in kj/kg.k
// From interpolation in table A-5 gives
s4 = 0.5957                                                                 // in kj/kg.k
// Calculation
Rout = mdot*(h1-h4-T0*(s1-s4))/(3600*10**3)                                 // in MW
// Result
printf( ' The net rate at which exergy is carried from the heat exchanger by the water stream, is : %.2f MW .',Rout)

// Part(c)
Eddot = Rin-Rout                                                            // in MW
// Result
printf( ' The rate of exergy destruction, in MW is : %.2f',Eddot)

// Part(d)
epsilon = Rout/Rin
// Result
printf( ' The exergetic efficiency is:  %.2f',epsilon)
