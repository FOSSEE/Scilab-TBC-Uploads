// Given:-
mf1 = 0.1                                                                        // mass fractiion of H2
mf2 = 0.6                                                                        // mass fraction of N2
mf3 = 0.3                                                                        // mass fraction of CO2

// Part(a)
M1 = 2.0                                                                          // molar mass of H2 in kg/kmol
M2 = 28.0                                                                         // molar mass of N2 in kg/kmol
M3 = 44.0                                                                         // molar mass of CO2 in kg/kmol

// Calculations
n1 = (mf1/M1)/(mf1/M1 + mf2/M2 + mf3/M3)                                          // mole fraction of H2 
n2 = (mf2/M2)/(mf1/M1 + mf2/M2 + mf3/M3)                                          // mole fraction of N2
n3 = (mf3/M3)/(mf1/M1 + mf2/M2 + mf3/M3)                                          // mole fraction of CO2

// Results
printf( 'The mole fraction of H2 in percentage is:  %f',n1*100)
printf( 'The mole fraction of N2 in percentage is:  %f',n2*100)
printf( 'The mole fraction of CO2 in percentage is:  %f',n3*100)

// Part(b)
// Calculation
M = n1*M1 + n2*M2 + n3*M3                                                         // in kg/kmol
// Result
printf( 'The apparent molecular weight of the mixture in kg/kmol is:  %f',M);
