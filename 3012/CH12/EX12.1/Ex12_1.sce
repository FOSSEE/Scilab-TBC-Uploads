// Given:-
n1 = 0.08                                                                        // mole fraction of CO2
n2 = 0.11                                                                        // mole fraction of H2O
n3 = 0.07                                                                        // mole fraction of O2
n4 = 0.74                                                                        // mole fraction of N2

// Part(a)
M1 = 44.0                                                                        // molar mass of CO2 in kg/kmol
M2 = 18.0                                                                        // molar mass of H2O in kg/kmol
M3 = 32.0                                                                        // molar mass of O2 in kg/kmol
M4 = 28.0                                                                        // molar mass of N2 in kg/kmol

// Calculations
M = M1*n1 + M2*n2 + M3*n3 + M4*n4                                                // in kg/kmol
// Result
printf( 'The apparent molecular weight of the mixture in kg/kmol is:  %f',M)

// Part(b)
mf1 = (M1*n1/M)*100.0                                                             // mass fraction of CO2 in percentage 
mf2 = (M2*n2/M)*100.0                                                             // mass fraction of H2O in percentage
mf3 = (M3*n3/M)*100.0                                                             // mass fraction of O2 in percentage
mf4 = (M4*n4/M)*100.0                                                             // mass fraction of N2 in percentage

// Results
printf( 'The mass fraction of CO2 in percentage is:  %f',mf1)
printf( 'The mass fraction of H2O in percentage is:  %f',mf2)
printf( 'The mass fraction of O2 in percentage is:  %f',mf3)
printf( 'The mass fraction of N2 in percentage is:  %f',mf4)
