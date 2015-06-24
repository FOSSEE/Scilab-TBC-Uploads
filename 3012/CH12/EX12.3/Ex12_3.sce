// Given:-
m1 = 0.3                                                                         // mass of CO2 in kg
m2 = 0.2                                                                         // mass of N2 in kg
p1 = 1.0                                                                         // in bar
T1 = 300.0                                                                       // in kelvin
p2 = 3.0                                                                         // in bar
n = 1.25

// Part(a)
// Calculation
T2 = T1*(p2/p1)**((n-1)/n)                                                      // in kelvin
// Result
printf( 'The final temperature in Kelvin is:  %f',T2);

// Part(b)
Rbar = 8.314                                                                     // universal gas constant in SI units
// Calculations
M = (m1+m2)/(m1/44 + m2/28)                                                      // molar mass of mixture in kg/kmol
W = ((m1+m2)*(Rbar/M)*(T2-T1))/(1-n)                                             // in kj
// Result
printf( 'The work in kj is:  %f',W )

// Part(c)
// From table A-23
uCO2T1 = 6939.0                                                                  // internal energy of CO2 on molar mass basis at temperature T1
uCO2T2 = 9198.0                                                                  // internal energy of CO2 on molar mass basis at temperature T2
uN2T1 = 6229.0                                                                   // internal energy of N2 on molar mass basis at temperature T1
uN2T2 = 7770.0                                                                   // internal energy of N2 on molar mass basis at temperature T2
deltaU = (m1/44)*(uCO2T2-uCO2T1) + (m2/28)*(uN2T2-uN2T1)                         // internal energy change of the mixture in KJ

// With assumption, The changes in kinetic and potential energy between the initial and final states can be ignored
Q = deltaU + W
// Result
printf( 'The heat transfer in kj is:  %f',Q);

// Part(d)
// From table A-23
sbarT2CO2 = 222.475
sbarT1CO2 = 213.915                                            
sbarT2N2 = 198.105
sbarT1N2 = 191.682
Rbar = 8.314                                                                     // universal gas constant
// Calculation
deltaS = (m1/44)*(sbarT2CO2-sbarT1CO2-Rbar*log(p2/p1)) + (m2/28)*(sbarT2N2-sbarT1N2-Rbar*log(p2/p1))
// Result
printf( 'The change in entropy of the mixture in kj/k is:  %f',deltaS)
